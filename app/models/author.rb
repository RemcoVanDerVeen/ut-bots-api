class Author < ApplicationRecord
  validates :nickname, presence: true
end
