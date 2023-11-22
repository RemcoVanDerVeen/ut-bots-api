class XbotsConfigurationBotlist < ApplicationRecord
  belongs_to :botlist, optional: false
  belongs_to :xbots_configuration, optional: false
end
