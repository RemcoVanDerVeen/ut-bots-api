class Botlist < ApplicationRecord
  has_many :xbots_configuration_botlists
  has_many :xbots_configurations, through: :xbots_configuration_botlists

  validates :name, presence: true
end
