class Author < ApplicationRecord
  validates :nickname, presence: true

  has_many :author_authorables
  has_many :authorables, through: :author_authorables
end
