VANILLA_VOICE_PACKS = [
  { name: 'Female One', description: '', ut_value: 'BotPack.VoiceFemaleOne', has_all_sounds: true, vanilla: true, player_models: PlayerModel::FEMALE_MODELS },
  { name: 'Female Two', description: '', ut_value: 'BotPack.VoiceFemaleTwo', has_all_sounds: true, vanilla: true, player_models: PlayerModel::FEMALE_MODELS },
  { name: 'Male One', description: '', ut_value: 'BotPack.VoiceMaleOne', has_all_sounds: true, vanilla: true, player_models: PlayerModel::MALE_MODELS },
  { name: 'Male Two', description: '', ut_value: 'BotPack.VoiceMaleTwo', has_all_sounds: true, vanilla: true, player_models: PlayerModel::MALE_MODELS },
  { name: 'Nali', description: '', ut_value: 'MultiMesh.NaliVoice', has_all_sounds: true, vanilla: true, player_models: PlayerModel::MALE_MODELS },
  { name: 'Nali WarCow', description: '', ut_value: 'MultiMesh.CowVoice', has_all_sounds: true, vanilla: true, player_models: PlayerModel::MALE_MODELS },
  { name: 'Robot', description: '', ut_value: 'Botpack.VoiceBotBoss', has_all_sounds: true, vanilla: true, player_models: [*PlayerModel::MALE_MODELS, *PlayerModel::ROBOT_MODELS] },
  { name: 'Skaarj Hybrid', description: '', ut_value: 'MultiMesh.SkaarjVoice', has_all_sounds: true, vanilla: true, player_models: PlayerModel::MALE_MODELS },
].freeze

CUSTOM_VOICE_PACKS = [
  { name: '[HGA] Boss', description: '', ut_value: 'DR_BOSS.DR_BOSS', player_models: PlayerModel::ROBOT_MODELS },
  { name: 'Alien Male (UT2k3)', description: '', ut_value: 'AlienMaleVP.AlienMaleVP', has_all_sounds: true, player_models: PlayerModel::MALE_MODELS },
  { name: 'Blade (Sin)', description: '', ut_value: 'BladeTaunts.Blade', player_models: PlayerModel::MALE_MODELS },
  { name: 'Bombshell', description: '', ut_value: 'Bombshell.Bombshell', has_all_sounds: true, player_models: PlayerModel::FEMALE_MODELS },
  { name: 'Counter-Strike', description: '', ut_value: 'Strike.Strike', player_models: PlayerModel::MALE_MODELS },
  { name: 'Deadeye', description: '', ut_value: 'DeadeyePackage.VoiceDeadeye', player_models: PlayerModel::MALE_MODELS },
  { name: 'Ditzy Girl', description: '', ut_value: 'ditzyPackage.Voiceditzy', player_models: PlayerModel::FEMALE_MODELS },
  { name: 'Duke Nukem', description: '', ut_value: 'DukeNukemVoice.DukeNukemVoice', has_all_sounds: true, player_models: PlayerModel::MALE_MODELS },
  { name: 'Elexis', description: '', ut_value: 'ElexisPackage.ElexisTaunts', player_models: PlayerModel::FEMALE_MODELS },
  { name: 'Female Robot', description: '', ut_value: 'FemaleBossVoice.VoiceFemaleBoss', has_all_sounds: true, player_models: PlayerModel::FEMALE_MODELS },
  { name: 'Godvoice', description: '', ut_value: 'GodPackage.VoiceGod', player_models: [*PlayerModel::FEMALE_MODELS, *PlayerModel::MALE_MODELS, *PlayerModel::ROBOT_MODELS] },
  { name: 'IronGuard Male (UT3)', description: '', ut_value: 'IGMale.IGMale', has_all_sounds: true, player_models: PlayerModel::MALE_MODELS },
  { name: 'J.C. (Sin)', description: '', ut_value: 'Jctaunts.Jctaunts', player_models: PlayerModel::MALE_MODELS },
  { name: 'Jester (UT3)', description: '', ut_value: 'Jester.Jester', has_all_sounds: true, player_models: PlayerModel::FEMALE_MODELS },
  { name: 'Lara Croft', description: '', ut_value: 'LaraVoice.LaraVoice', player_models: PlayerModel::FEMALE_MODELS },
  { name: 'Lauren (UT3)', description: '', ut_value: 'Lauren.Lauren', has_all_sounds: true, player_models: PlayerModel::FEMALE_MODELS },
  { name: 'Lo Wang', description: '', ut_value: 'Wang.VoiceWang', player_models: PlayerModel::MALE_MODELS },
  { name: 'Octane', description: '', ut_value: 'OctanePackage.VoiceOctane', player_models: PlayerModel::ROBOT_MODELS },
  { name: 'PikaVP', description: '', ut_value: 'PikaVP.PikaVP', player_models: PlayerModel::MALE_MODELS },
  { name: 'RemcoVoice', description: '', ut_value: 'RemcoVoice.RemcoVoice', has_all_sounds: true, player_models: PlayerModel::MALE_MODELS },
  { name: 'Robocop', description: '', ut_value: 'Robocop.Robocop', player_models: PlayerModel::MALE_MODELS },
  { name: 'RoboCop II', description: '', ut_value: 'RoboCopIIPackage.voiceRoboCopII', player_models: PlayerModel::ROBOT_MODELS },
  { name: 'Robotvoice', description: '', ut_value: 'robotPackage.Voicerobot', has_all_sounds: true, player_models: PlayerModel::MALE_MODELS },
  { name: 'Terminator', description: '', ut_value: 'termpackage.voiceterm', player_models: PlayerModel::MALE_MODELS },
  { name: "UT2K4 - Gen Mo'Kai", description: '', ut_value: 'ut2004charactersv2.alienvoice', has_all_sounds: true, player_models: PlayerModel::MALE_MODELS },
  { name: 'UT2K4 - Human Female', description: '', ut_value: 'ut2004charactersv2.mercfemalevoice', has_all_sounds: true, player_models: PlayerModel::FEMALE_MODELS },
  { name: 'UT2K4 - Human Male', description: '', ut_value: 'ut2004charactersv2.mercmalevoice', has_all_sounds: true, player_models: PlayerModel::MALE_MODELS },
  { name: 'UT2K4 - Juggernaut Female', description: '', ut_value: 'ut2004charactersv2.juggfemalevoice', has_all_sounds: true, player_models: PlayerModel::FEMALE_MODELS },
  { name: 'UT2K4 - Juggernaut Male', description: '', ut_value: 'ut2004charactersv2.juggmalevoice', has_all_sounds: true, player_models: PlayerModel::MALE_MODELS },
  { name: 'UT2K4 - Nightmare Female', description: '', ut_value: 'ut2004charactersv2.nightfemalevoice', has_all_sounds: true, player_models: PlayerModel::FEMALE_MODELS },
  { name: 'UT2K4 - Nightmare Male', description: '', ut_value: 'ut2004charactersv2.nightmalevoice', has_all_sounds: true, player_models: PlayerModel::MALE_MODELS },
  { name: 'UT2k4 Robot', description: '', ut_value: 'UT2k4Robot.UT2k4Robot', has_all_sounds: true, player_models: [*PlayerModel::MALE_MODELS, *PlayerModel::ROBOT_MODELS] },
  { name: 'Worf', description: '', ut_value: 'worfpackage.voiceworf', player_models: PlayerModel::MALE_MODELS },
]

puts "Creating voice packs..."

[*VANILLA_VOICE_PACKS, *CUSTOM_VOICE_PACKS].each do |voice_pack_attrs|
  VoicePack.where(**voice_pack_attrs.except(:player_models)).first_or_create! do |voice_pack|
    puts "***#{voice_pack.name} added!***"

    voice_pack_attrs[:player_models].each do |model_name|
      model = PlayerModel.find_by(name: model_name)
      next if model.blank?

      voice_pack.player_models << model
    end
  end
end

puts "\n"
