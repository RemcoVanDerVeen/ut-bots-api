class CombatStyle < ApplicationRecord
  default_scope { order_by_name }

  validates :name, presence: true
  validates :ut_value, presence: true, numericality: { in: -1..1 } # intervals of 0.5

  scope :order_by_name, -> { order(:name) }

  def ut_value_to_percentage
    (((ut_value - -1.0)/(1.0 - -1.0))*100).to_i
  end
end
