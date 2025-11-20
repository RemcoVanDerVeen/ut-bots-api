class Weapon < ApplicationRecord
  default_scope { order_by_name }

  has_many :author_authorables, as: :authorable
  has_many :authors, through: :author_authorables

  validates :name, :ut_value, presence: true

  scope :order_by_name, -> { order(:name) }
end
