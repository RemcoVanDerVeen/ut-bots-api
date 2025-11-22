class XbotsImportService
  class ImportError < StandardError; end

  def initialize(file_content, configuration_name: nil)
    @file_content = file_content
    @configuration_name = configuration_name
    @errors = []
  end

  def import
    Rails.logger.info "[XbotsImport] Starting import process"
    parsed_data = parse_ini_file(@file_content)

    if parsed_data.empty?
      @errors << "No valid botlists found in the file"
      Rails.logger.error "[XbotsImport] No valid botlists found"
      return { success: false, errors: @errors }
    end

    Rails.logger.info "[XbotsImport] Found #{parsed_data.count} botlist section(s)"

    xbots_configuration = nil
    botlists = []

    ActiveRecord::Base.transaction do
      # Create XbotsConfiguration
      xbots_configuration = create_xbots_configuration

      # Process each botlist in the file
      parsed_data.each_with_index do |(section_name, botlist_data), index|
        botlist = create_botlist(section_name, botlist_data, index)
        botlists << botlist

        # Link botlist to configuration
        XbotsConfigurationBotlist.create!(
          xbots_configuration: xbots_configuration,
          botlist: botlist,
          position: index,
          is_enabled: true
        )

        # Process each bot in the botlist
        process_bots(botlist, botlist_data)
      end
    end

    total_bots = botlists.sum { |bl| bl.bots.count }
    Rails.logger.info "[XbotsImport] Import completed successfully: #{botlists.count} botlist(s), #{total_bots} bot(s), #{@errors.count} error(s)"

    {
      success: true,
      xbots_configuration: xbots_configuration,
      botlists: botlists,
      errors: @errors
    }
  rescue StandardError => e
    Rails.logger.error "[XbotsImport] Import failed: #{e.message}"
    Rails.logger.error "[XbotsImport] Backtrace: #{e.backtrace.first(10).join("\n")}"
    {
      success: false,
      errors: [ @errors, e.message ].flatten.compact
    }
  end

  private

  def parse_ini_file(content)
    botlists = {}
    current_section = nil
    current_data = {}

    content.each_line do |line|
      line = line.strip

      # Check for section header
      if line.match(/^\[(.+)\]$/)
        # Save previous section if it exists
        if current_section && !current_data.empty?
          botlists[current_section] = current_data
        end

        # Start new section
        current_section = $1
        current_data = {}
      elsif line.include?("=") && current_section
        key, value = line.split("=", 2)
        key = key.strip
        value = value.strip

        # Parse array notation (e.g., BotNames[0]=Xan)
        if key =~ /^(\w+)\[(\d+)\]$/
          array_name = $1
          index = $2.to_i
          current_data[array_name] ||= []
          current_data[array_name][index] = value
        else
          current_data[key] = value
        end
      end
    end

    # Save the last section
    if current_section && !current_data.empty?
      botlists[current_section] = current_data
    end

    botlists
  end

  def create_xbots_configuration
    name = @configuration_name || "Imported Configuration #{Time.current.strftime('%Y-%m-%d %H:%M:%S')}"

    XbotsConfiguration.create!(
      name: name,
      description: "Imported from XBots INI file",
      is_active: false,
      is_enabled: true
    )
  end

  def create_botlist(section_name, botlist_data, index)
    # Extract botlist name from section (e.g., "XBots9b.XBotsBotInfoL01" -> "L01")
    match_data = section_name.match(/L(\d+)$/)
    list_number = match_data ? match_data[1] : (index + 1).to_s.rjust(2, "0")

    Botlist.create!(
      name: "Botlist #{list_number}",
      description: "Imported from #{section_name}",
      is_enabled: botlist_data["Difficulty"].present?
    )
  end

  def process_bots(botlist, botlist_data)
    slot_used = botlist_data["slotUsed"] || []
    bot_names = botlist_data["BotNames"] || []
    bot_classes = botlist_data["BotClasses"] || []
    bot_skins = botlist_data["BotSkins"] || []
    bot_faces = botlist_data["BotFaces"] || []
    voice_types = botlist_data["VoiceType"] || []
    bot_teams = botlist_data["BotTeams"] || []
    bot_skills = botlist_data["BotSkills"] || []
    bot_accuracy = botlist_data["BotAccuracy"] || []
    combat_styles = botlist_data["CombatStyle"] || []
    alertness = botlist_data["Alertness"] || []
    camping = botlist_data["Camping"] || []
    strafing_ability = botlist_data["StrafingAbility"] || []
    favorite_weapons = botlist_data["FavoriteWeapon"] || []
    bot_jumpy = botlist_data["BotJumpy"] || []

    32.times do |i|
      # Skip if no bot name defined (empty slot)
      next if bot_names[i].blank?

      begin
        # Map slotUsed to is_enabled (0 = disabled, 1 = enabled)
        is_enabled = slot_used[i].to_i == 1

        bot = create_or_find_bot(
          name: bot_names[i],
          model_ut_value: bot_classes[i],
          skin_ut_value: bot_skins[i],
          face_ut_value: bot_faces[i],
          voice_ut_value: voice_types[i],
          colour_ut_value: bot_teams[i],
          skill_ut: bot_skills[i]&.to_f,
          accuracy_ut: bot_accuracy[i]&.to_f,
          combat_style_ut: combat_styles[i]&.to_f,
          alertness_ut: alertness[i]&.to_f,
          camping_ut: camping[i]&.to_f,
          strafing_ut: strafing_ability[i]&.to_f,
          weapon_ut_value: favorite_weapons[i],
          jumpy: bot_jumpy[i].to_i == 1
        )

        if bot.nil?
          error_msg = "Bot '#{bot_names[i]}' (slot #{i}): Failed to create - one or more required models not found"
          @errors << error_msg
          Rails.logger.warn "[XbotsImport] #{error_msg}"
          next
        end

        # Add bot to botlist with is_enabled mapped from slotUsed
        BotlistBot.create!(
          botlist: botlist,
          bot: bot,
          position: i,
          is_enabled: is_enabled
        )
      rescue StandardError => e
        error_msg = "Bot '#{bot_names[i]}' (slot #{i}): #{e.message}"
        @errors << error_msg
        Rails.logger.error "[XbotsImport] #{error_msg}"
        Rails.logger.error "[XbotsImport] Backtrace: #{e.backtrace.first(3).join(' | ')}"
      end
    end
  end

  def create_or_find_bot(name:, model_ut_value:, skin_ut_value:, face_ut_value:,
                         voice_ut_value:, colour_ut_value:, skill_ut:, accuracy_ut:,
                         combat_style_ut:, alertness_ut:, camping_ut:, strafing_ut:,
                         weapon_ut_value:, jumpy:)
    # Find or create PlayerModel
    model = find_or_create_player_model(model_ut_value)
    return nil unless model

    # Find or create PlayerModelSkin
    skin = find_or_create_player_model_skin(skin_ut_value, model)
    return nil unless skin

    # Find or create PlayerModelSkinFace
    face = find_or_create_player_model_skin_face(face_ut_value, skin)
    return nil unless face

    # Find or create VoicePack
    voice_pack = find_or_create_voice_pack(voice_ut_value)
    return nil unless voice_pack

    # Find or create CombatStyle
    combat_style = find_or_create_combat_style(combat_style_ut)
    return nil unless combat_style

    # Find colour (optional, based on team)
    colour = find_colour(colour_ut_value)

    # Find favorite weapon (optional)
    weapon = find_weapon(weapon_ut_value)

    # Try to find existing bot or create new one
    Bot.find_or_create_by!(name: name) do |bot|
      bot.model = model
      bot.skin = skin
      bot.face = face
      bot.voice_pack = voice_pack
      bot.combat_style = combat_style
      bot.colour = colour
      bot.favourite_weapon = weapon

      # Set UT (decimal) values
      bot.skill_adjust_ut = skill_ut
      bot.bot_accuracy_ut = accuracy_ut
      bot.alertness_ut = alertness_ut
      bot.camping_ut = camping_ut
      bot.strafing_ability_ut = strafing_ut

      # Set integer values (default to 0 to pass validation)
      # The _ut fields are the authoritative source, these are just for compatibility
      bot.skill_adjust = 0
      bot.bot_accuracy = 0
      bot.alertness = 0
      bot.camping = 0
      bot.strafing_ability = 0

      bot.has_jumpy_behaviour = jumpy
    end
  end

  def find_or_create_player_model(ut_value)
    if ut_value.blank?
      Rails.logger.warn "[XbotsImport] PlayerModel ut_value is blank"
      return nil
    end

    PlayerModel.find_or_create_by!(ut_value: ut_value) do |model|
      # Extract a readable name from the UT value
      # e.g., "BotPack.TMale2Bot" -> "Male Soldier"
      model.name = extract_model_name(ut_value)
      model.description = "Auto-imported from INI file"
      Rails.logger.info "[XbotsImport] Created new PlayerModel: #{model.name} (#{ut_value})"
    end
  rescue StandardError => e
    Rails.logger.error "[XbotsImport] Failed to find/create PlayerModel with ut_value '#{ut_value}': #{e.message}"
    nil
  end

  def find_or_create_player_model_skin(ut_value, player_model)
    if ut_value.blank?
      Rails.logger.warn "[XbotsImport] PlayerModelSkin ut_value is blank"
      return nil
    end

    PlayerModelSkin.find_or_create_by!(ut_value: ut_value) do |skin|
      skin.player_model = player_model
      skin.name = extract_skin_name(ut_value)
      skin.description = "Auto-imported from INI file"
      Rails.logger.info "[XbotsImport] Created new PlayerModelSkin: #{skin.name} (#{ut_value})"
    end
  rescue StandardError => e
    Rails.logger.error "[XbotsImport] Failed to find/create PlayerModelSkin with ut_value '#{ut_value}': #{e.message}"
    nil
  end

  def find_or_create_player_model_skin_face(ut_value, player_model_skin)
    # If face is blank, create a default face
    if ut_value.blank?
      ut_value = "#{player_model_skin.ut_value}.Default"
    end

    PlayerModelSkinFace.find_or_create_by!(ut_value: ut_value) do |face|
      face.player_model_skin = player_model_skin
      face.name = extract_face_name(ut_value)
      face.description = "Auto-imported from INI file"
    end
  end

  def find_or_create_voice_pack(ut_value)
    if ut_value.blank?
      Rails.logger.warn "[XbotsImport] VoicePack ut_value is blank"
      return nil
    end

    VoicePack.find_or_create_by!(ut_value: ut_value) do |voice|
      voice.name = extract_voice_name(ut_value)
      voice.description = "Auto-imported from INI file"
      Rails.logger.info "[XbotsImport] Created new VoicePack: #{voice.name} (#{ut_value})"
    end
  rescue StandardError => e
    Rails.logger.error "[XbotsImport] Failed to find/create VoicePack with ut_value '#{ut_value}': #{e.message}"
    nil
  end

  def find_or_create_combat_style(ut_value)
    return nil if ut_value.nil?

    # Combat styles have specific ut_values (-1, -0.5, 0, 0.5, 1)
    # Round to nearest 0.5
    rounded_value = (ut_value.to_f * 2).round / 2.0

    CombatStyle.find_or_create_by!(ut_value: rounded_value) do |style|
      style.name = combat_style_name(rounded_value)
      style.description = "Auto-imported from INI file"
    end
  end

  def find_colour(ut_value)
    return nil if ut_value.blank?

    # Convert string to integer if needed
    ut_value_int = ut_value.to_i

    Colour.find_by(ut_value: ut_value_int)
  end

  def find_weapon(ut_value)
    return nil if ut_value.blank?

    Weapon.find_by(ut_value: ut_value)
  end

  # Helper methods to extract readable names from UT values

  def extract_model_name(ut_value)
    # Remove package prefix and "Bot" suffix
    name = ut_value.split(".").last
    name.gsub!(/Bot(Fixed?)?(\d+)?$/i, "")

    # Convert camelCase to readable format
    name.gsub!(/([a-z])([A-Z])/, '\1 \2')

    # Handle special cases
    case name
    when /TMale1/i then "Male Commando"
    when /TMale2/i then "Male Soldier"
    when /TFemale1/i then "Female Commando"
    when /TFemale2/i then "Female Soldier"
    when /TBoss/i then "Boss"
    when /TNali2/i then "Nali"
    when /TCow/i then "Nali WarCow"
    when /TSkaarj/i then "Skaarj Hybrid"
    else
      name.strip.presence || ut_value
    end
  end

  def extract_skin_name(ut_value)
    # Extract the skin name from "PackageName.SkinName"
    parts = ut_value.split(".")
    parts.last || ut_value
  end

  def extract_face_name(ut_value)
    # Extract the face name from "PackageName.FaceName"
    parts = ut_value.split(".")
    parts.last || ut_value
  end

  def extract_voice_name(ut_value)
    # Extract a readable voice name
    name = ut_value.split(".").last
    name.gsub!(/Voice/, " Voice")
    name.gsub!(/([a-z])([A-Z])/, '\1 \2')
    name.strip
  end

  def combat_style_name(ut_value)
    case ut_value
    when -1.0 then "Very Defensive"
    when -0.5 then "Defensive"
    when 0.0 then "Balanced"
    when 0.5 then "Aggressive"
    when 1.0 then "Very Aggressive"
    else "Custom (#{ut_value})"
    end
  end
end
