class Map < ApplicationRecord
  has_many :game_mode_maps
  has_many :game_modes, through: :game_mode_maps

  validates :name, presence: true
end
