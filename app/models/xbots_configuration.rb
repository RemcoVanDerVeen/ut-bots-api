class XbotsConfiguration < ApplicationRecord
  has_many :xbots_configuration_botlists
  has_many :botlists, through: :xbots_configuration_botlists

  validates :name, presence: true
end
