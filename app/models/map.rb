class Map < ApplicationRecord
  has_many :game_mode_maps
  has_many :game_modes, through: :game_mode_maps

  has_many :author_authorables, as: :authorable
  has_many :authors, through: :author_authorables

  validates :name, presence: true
end
