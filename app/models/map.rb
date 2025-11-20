class Map < ApplicationRecord
  has_many :game_mode_maps, dependent: :destroy
  has_many :game_modes, through: :game_mode_maps

  has_many :author_authorables, as: :authorable, dependent: :destroy
  has_many :authors, through: :author_authorables

  validates :name, presence: true

  def player_advice
    if min_players.blank? && max_players.blank?
      "Unknown"
    elsif min_players == max_players
      "#{min_players} players"
    else
      "#{min_players}-#{max_players} players"
    end
  end
end
