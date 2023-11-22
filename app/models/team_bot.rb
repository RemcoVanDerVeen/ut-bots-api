class TeamBot < ApplicationRecord
  belongs_to :bot, optional: false
  belongs_to :team, optional: false

  validates :position, presence: true
end
