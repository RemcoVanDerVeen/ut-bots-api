class Mutator < ApplicationRecord
  belongs_to :game_mode, optional: true

  has_many :author_authorables, as: :authorable, dependent: :destroy
  has_many :authors, through: :author_authorables

  validates :name, presence: true
end
