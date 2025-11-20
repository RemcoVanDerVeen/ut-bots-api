class PlayerModelSkin < ApplicationRecord
  belongs_to :player_model, optional: false
  has_many :player_model_skin_faces

  has_many :author_authorables, as: :authorable
  has_many :authors, through: :author_authorables

  validates :name, :ut_value, presence: true
end
