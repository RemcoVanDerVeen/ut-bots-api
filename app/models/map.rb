class Map < ApplicationRecord
  belongs_to :game_mode, optional: true

  validates :name, presence: true
end
