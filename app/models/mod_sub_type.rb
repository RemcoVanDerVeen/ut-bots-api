class ModSubType < ApplicationRecord
  belongs_to :mod_type, optional: false

  validates :name, presence: true
end
