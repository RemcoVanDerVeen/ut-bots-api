# Troubleshooting XBots Import Errors

## Viewing Import Errors

When you import an XBots INI file and errors occur, you now have multiple ways to see what went wrong:

### 1. **On-Screen Error Display**

After an import, if errors occurred:
- On the XBots Configuration show page, you'll see a yellow warning box with all errors listed (stored in cache to avoid cookie overflow)
- On the import page (if import totally failed), you'll see a red error box with the first 20 errors
- Each error message shows:
  - The bot name
  - The slot number
  - The specific error that occurred
- Errors are stored in Rails cache for 1 hour, so they'll be available even after page refresh

### 2. **Rails Log**

All import activity is logged to your Rails log file. To view it:

```bash
# In development
tail -f log/development.log

# In production
tail -f log/production.log
```

Log entries include:
- `[XbotsImport]` prefix for easy filtering
- Start/end of import process
- Each botlist section found
- New models/skins/faces/voices created
- Detailed error messages with backtraces

### 3. **Filtering Logs**

To see only import-related logs:

```bash
grep "XbotsImport" log/development.log
```

## Common Import Errors

### "Failed to create - one or more required models not found"

**Cause**: A required PlayerModel, PlayerModelSkin, PlayerModelSkinFace, VoicePack, or CombatStyle couldn't be created.

**Solution**: 
- Check the Rails log for which specific model failed
- Look for error messages about validation failures
- Common issues:
  - `name` field is required but couldn't be extracted from ut_value
  - Duplicate ut_value (if the model already exists but with different associations)

### "VoicePack ut_value is blank"

**Cause**: The INI file has an empty VoiceType field for that bot slot.

**Solution**: 
- This is often normal for unused bot slots
- Check if `slotUsed[i]=0` for that slot
- If the slot should be used, the INI file might be malformed

### "PlayerModelSkin ut_value is blank"

**Cause**: The INI file has an empty BotSkins field for that bot slot.

**Solution**: 
- Check the INI file for that specific slot number
- Verify the BotSkins array has a value at that index

### Database Validation Errors

**Example**: `Validation failed: Name can't be blank`

**Cause**: The auto-generated name from the ut_value was blank or invalid.

**Solution**: 
- Check the `extract_model_name`, `extract_skin_name`, etc. methods in the service
- The ut_value might be in an unexpected format
- You may need to add special handling for that specific ut_value format

### Character Encoding Errors

**Example**: `PG::Error: invalid multibyte character`

**Cause**: The INI file contains special characters (like accented letters: á, é, ö, ü) that aren't properly encoded.

**Solution**: 
- The importer now automatically handles this by detecting encoding
- Files are first tried as UTF-8
- If invalid, they're converted from Windows-1252 to UTF-8
- Invalid characters are replaced with '?'
- This is normal for UT INI files which often use Windows-1252 encoding

**Note**: Bot names with special characters will have those characters replaced with '?' but will still import successfully.

## Debug Workflow

1. **Try the import** through the web interface
2. **Check the error count** displayed on screen
3. **Review on-screen errors** in the scrollable error box
4. **If you need more detail**, check the Rails log:
   ```bash
   tail -n 200 log/development.log | grep XbotsImport
   ```
5. **Identify the pattern**: Are all errors related to one type of model? One specific bot?
6. **Fix the issue** in the service or database
7. **Re-import** to verify the fix

## Example Log Output

```
[XbotsImport] Starting import process
[XbotsImport] Found 2 botlist section(s)
[XbotsImport] Created new PlayerModel: Male Soldier (BotPack.TMale2Bot)
[XbotsImport] Created new PlayerModelSkin: sldr (SoldierSkins.sldr)
[XbotsImport] Created new VoicePack: Boss Voice (Botpack.VoiceBotBoss)
[XbotsImport] Bot 'Harlin' (slot 1): Failed to create - one or more required models not found
[XbotsImport] Failed to find/create PlayerModelSkin with ut_value '': Validation failed: Name can't be blank
[XbotsImport] Import completed successfully: 2 botlist(s), 28 bot(s), 4 error(s)
```

## Testing

To test the error reporting:
1. Import one of the test INI files
2. Check how many bots were successfully created
3. Review any errors that occurred
4. Check the Rails log for detailed information

