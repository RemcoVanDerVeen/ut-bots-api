SKIN_MODELS = [
  BOSS = 'Boss',
  FEMALE_COMMANDO = 'Female Commando',
  FEMALE_SOLDIER = 'Female Soldier',
  MALE_COMMANDO = 'Male Commando',
  MALE_SOLDIER = 'Male Soldier',
  NALI = 'Nali',
  NALI_WARCOW = 'Nali WarCow',
  SKAARJ_HYBRID = 'Skaarj Hybrid',
  WARBOSS = 'Warboss',
  XAN_MARK_II = 'Xan Mark II'
].freeze

# SKIN_AUTHORS = [
#   EPIC_GAMES = { nickname: 'Epic Games' }
# ]

MALE_SOLDIER_SKINS = [].freeze
MALE_COMMANDO_SKINS = [].freeze
FEMALE_COMMANDO_SKINS = [
  { name: 'Enforcer', ut_value: 'FCommando_Law.jdge', player_model: FEMALE_COMMANDO, has_all_colours: true,
    faces: [
      { name: 'Judy', ut_value: 'FCommando_Law.judy' },
      { name: 'Julie', ut_value: 'FCommando_Law.julie' },
      { name: 'Kathryn', ut_value: 'FCommando_Law.kathryn' },
      { name: 'Molly', ut_value: 'FCommando_Law.molly' }
    ] }
].freeze
FEMALE_SOLDIER_SKINS = [].freeze
BOSS_SKINS = [
  { name: 'Brain', ut_value: 'BossSkins_Brain.brbo', player_model: BOSS, has_all_colours: true }
].freeze
NALI_SKINS = [].freeze
NALI_WARCOW_SKINS = [].freeze
SKAARJ_HYBRID_SKINS = [].freeze
WARBOSS_SKINS = [].freeze
XAN_MARK_II_SKINS = [].freeze

[
  *MALE_SOLDIER_SKINS,
  *MALE_COMMANDO_SKINS,
  *FEMALE_COMMANDO_SKINS,
  *FEMALE_SOLDIER_SKINS,
  *BOSS_SKINS,
  *NALI_SKINS,
  *NALI_WARCOW_SKINS,
  *SKAARJ_HYBRID_SKINS,
  *WARBOSS_SKINS,
  *XAN_MARK_II_SKINS
].each do |skin_data|
  player_model = PlayerModel.find_by(name: skin_data[:player_model])

  skin = PlayerModelSkin.find_by(player_model: player_model, name: skin_data[:name])
  skin = PlayerModelSkin.new(player_model: player_model, name: skin_data[:name]) if skin.blank?
  skin.description = skin_data[:description]
  skin.ut_value = skin_data[:ut_value]
  skin.has_all_colours = skin_data[:has_all_colours]
  skin.vanilla = skin_data[:vanilla] || false
  skin.save!
  puts "*** Created skin #{skin.name} for player model #{player_model.name} ***"

  next unless skin_data[:faces].present?

  skin_data[:faces].each do |face_data|
    skin.player_model_skin_faces.create!(
      name: face_data[:name],
      description: face_data[:description],
      ut_value: face_data[:ut_value],
      vanilla: face_data[:vanilla] || skin_data[:vanilla] || false
    )
    puts "*** Created face #{face_data[:name]} for skin #{skin.name} ***"
  end
end
