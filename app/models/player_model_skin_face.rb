class PlayerModelSkinFace < ApplicationRecord
  belongs_to :player_model_skin, optional: false

  has_many :author_authorables, as: :authorable
  has_many :authors, through: :author_authorables

  validates :name, :ut_value, presence: true
end
