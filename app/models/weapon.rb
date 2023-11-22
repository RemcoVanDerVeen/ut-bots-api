class Weapon < ApplicationRecord
  default_scope { order_by_name }

  validates :name, :ut_value, presence: true

  scope :order_by_name, -> { order(:name) }
end
