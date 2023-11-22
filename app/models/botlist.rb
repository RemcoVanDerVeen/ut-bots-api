class Botlist < ApplicationRecord
  belongs_to :xbots_configuration, optional: true

  validates :name, presence: true
  validates :position, unique: { scope: :xbots_configuration }, allow_nil: true
end
