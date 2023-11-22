class BotlistBot < ApplicationRecord
  belongs_to :bot, optional: false
  belongs_to :botlist, optional: false

  validates :position, presence: true
end
