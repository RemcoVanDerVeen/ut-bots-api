class Botlist < ApplicationRecord
  default_scope { order(name: :asc) }

  has_many :botlist_bots
  has_many :bots, through: :botlist_bots
  has_many :xbots_configuration_botlists
  has_many :xbots_configurations, through: :xbots_configuration_botlists

  validates :name, presence: true
end
