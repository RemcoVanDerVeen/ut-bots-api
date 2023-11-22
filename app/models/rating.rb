class Rating < ApplicationRecord
  belongs_to :rateable, polymorphic: true, optional: false

  validates :value, presence: true, numericality: { in 1..10 }
end
