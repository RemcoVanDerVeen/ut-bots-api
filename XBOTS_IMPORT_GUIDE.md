# XBots INI Import Feature

This feature allows you to import Unreal Tournament XBots configuration files (.ini) into the database.

## Files Created

### Controllers
- `app/controllers/xbots_imports_controller.rb` - Handles file upload and import requests

### Services
- `app/services/xbots_import_service.rb` - Core logic for parsing INI files and creating database records

### Views
- `app/views/xbots_imports/new.html.erb` - File upload form

### Models Updated
- `app/models/botlist.rb` - Added `has_many :bots` relationship
- `app/models/xbots_configuration.rb` - Added `has_many :botlists` relationship

### Routes
- Added `resources :xbots_imports, only: [:new, :create]`

## How It Works

### Import Process

1. **Upload**: User uploads an INI file via the web interface at `/xbots_imports/new`
2. **Parse**: The service parses the INI file and extracts all botlist sections
3. **Create/Find**: For each bot, the service:
   - Finds or creates the PlayerModel based on `ut_value`
   - Finds or creates the PlayerModelSkin based on `ut_value`
   - Finds or creates the PlayerModelSkinFace based on `ut_value`
   - Finds or creates the VoicePack based on `ut_value`
   - Finds or creates the CombatStyle based on `ut_value`
   - Finds the Weapon (if specified)
   - Creates or finds the Bot with all these associations
4. **Link**: Creates the XbotsConfiguration and links all botlists to it

### Data Mapping

The service maps INI file data to database models as follows:

| INI Field | Database Model/Field |
|-----------|---------------------|
| `BotClasses[i]` | PlayerModel.ut_value |
| `BotSkins[i]` | PlayerModelSkin.ut_value |
| `BotFaces[i]` | PlayerModelSkinFace.ut_value |
| `VoiceType[i]` | VoicePack.ut_value |
| `BotTeams[i]` | Colour.ut_value |
| `CombatStyle[i]` | CombatStyle.ut_value |
| `FavoriteWeapon[i]` | Weapon.ut_value |
| `BotNames[i]` | Bot.name |
| `slotUsed[i]` | BotlistBot.is_enabled |
| `BotSkills[i]` | Bot.skill_adjust_ut |
| `BotAccuracy[i]` | Bot.bot_accuracy_ut |
| `Alertness[i]` | Bot.alertness_ut |
| `Camping[i]` | Bot.camping_ut |
| `StrafingAbility[i]` | Bot.strafing_ability_ut |
| `BotJumpy[i]` | Bot.has_jumpy_behaviour |

### Auto-Creation Logic

When a PlayerModel, Skin, Face, or VoicePack doesn't exist:
- The service creates it automatically with the `ut_value` from the INI file
- A readable name is generated from the `ut_value`
- The description is set to "Auto-imported from INI file"

### Team Colours (BotTeams)

The `BotTeams` field maps to team colours:
- `255` = None (no team)
- `0` = Red
- `1` = Blue
- `2` = Green
- `3` = Gold

These colours must already exist in the database (they are typically seeded).

### Bot Slots and Enabled Status

XBots supports up to 32 bot slots per botlist. The `slotUsed[i]` field determines whether a bot is enabled:
- `slotUsed[i]=1` → Bot is **enabled** (`BotlistBot.is_enabled = true`)
- `slotUsed[i]=0` → Bot is **disabled** (`BotlistBot.is_enabled = false`)

All bot slots with defined bot names are imported, and their enabled status matches the `slotUsed` value from the INI file.

### File Format

The importer expects XBots INI files with sections like:

```ini
[XBots.XBotsBotInfoL01]
slotUsed[0]=1
BotNames[0]=Xan Kriegor
BotClasses[0]=BotPack.TBossBot
BotSkins[0]=BossSkins.Boss
BotFaces[0]=BossSkins.Xan
VoiceType[0]=Botpack.VoiceBotBoss
BotSkills[0]=2.000000
BotAccuracy[0]=1.000000
...

[XBots.XBotsBotInfoL02]
...
```

Each file can contain multiple botlist sections.

## Usage

1. Navigate to XBots Configurations index page
2. Click "Import from INI file"
3. (Optional) Enter a custom configuration name
4. Select the INI file to upload
5. Click "Import"

The system will:
- Create a new XbotsConfiguration
- Create all necessary botlists
- Create or find all referenced models, skins, faces, voice packs
- Create or find all bots
- Link everything together

## Testing

Test files are available in:
- `test/fixtures/files/BotList_Single.ini`
- `test/fixtures/files/XBotsLists_1-2.ini`
- `test/fixtures/files/XBotsLists_3-4.ini`
- `test/fixtures/files/XBotsLists.ini`

## Error Handling

- The import is wrapped in a database transaction
- If any critical error occurs, the entire import is rolled back
- Non-critical errors (e.g., individual bot creation failures) are logged but don't stop the import
- All errors are displayed to the user after import completes

