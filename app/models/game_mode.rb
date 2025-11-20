class GameMode < ApplicationRecord
  has_many :game_mode_maps
  has_many :maps, through: :game_mode_maps
  has_many :mutators

  default_scope { order_by_name }

  validates :name, :ut_value, presence: true

  scope :order_by_name, -> { order(:name) }
end
