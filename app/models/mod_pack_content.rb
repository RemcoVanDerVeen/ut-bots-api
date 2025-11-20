class ModPackContent < ApplicationRecord
  belongs_to :content, polymorphic: true, optional: false
  belongs_to :mod_pack, optional: false

  has_many :author_authorables, as: :authorable
  has_many :authors, through: :author_authorables
end
