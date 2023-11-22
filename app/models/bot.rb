class Bot < ApplicationRecord
  belongs_to :colour, optional: true
  belongs_to :combat_style, optional: false
  belongs_to :face, class_name: "PlayerModelSkinFace", optional: false # scope by skin
  belongs_to :favourite_weapon, class_name: "Weapon", optional: true
  belongs_to :model, class_name: "PlayerModel", optional: false
  belongs_to :skin, class_name: "PlayerModelSkin", optional: false # scope by model
  belongs_to :voice_pack, optional: false # scope by model

  validates :name, :has_jumpy_behaviour, presence: true
  validates :skill_adjust, numericality: { in: -3..3 } # intervals of 1
  validates :bot_accuracy, :alertness, numericality: { in: -1..1 } # intervals of 0.05
  validates :camping, numericality: { in: 0..1 } # intervals of 0.10
  validates :strafing_ability, numericality: { in: -1..1 } # intervals of 0.25
end
