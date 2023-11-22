class PlayerModel < ApplicationRecord
  FEMALE_MODELS = [
    'Anna Navarre',
    'Female Commando',
    'Female Soldier'
  ].freeze

  MALE_MODELS = [
    'Alien Queen',
    'Chicken',
    'Gunther Hermann',
    'JC Denton',
    'Male Commando',
    'Male Soldier',
    'Mech Trooper',
    'Nali',
    'Nali WarCow',
    'Skaarj Hybrid'
  ].freeze

  ROBOT_MODELS = [
    'Boss',
    'War Machine',
    'WarBoss',
    'Xan Mark II'
  ].freeze

  has_many :player_model_voice_packs
  has_many :voice_packs, through: :player_model_voice_packs

  validates :name, :ut_value, presence: true
end
