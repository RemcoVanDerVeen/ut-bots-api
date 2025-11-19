class PlayerModelSkin < ApplicationRecord
  belongs_to :player_model, optional: false
  has_many :player_model_skin_faces

  validates :name, :ut_value, presence: true
end
