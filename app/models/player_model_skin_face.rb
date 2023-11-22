class PlayerModelSkinFace < ApplicationRecord
  belongs_to :player_model_skin, optional: false

  validates :name, :ut_value, presence: true
end
