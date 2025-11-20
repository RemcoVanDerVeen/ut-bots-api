class GameModeMap < ApplicationRecord
  belongs_to :game_mode, optional: false
  belongs_to :map, optional: false
end
