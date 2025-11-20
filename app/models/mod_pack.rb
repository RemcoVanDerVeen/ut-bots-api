class ModPack < ApplicationRecord
  belongs_to :mod_type, optional: false
  belongs_to :mod_sub_type, optional: true
  has_many :mod_pack_contents

  has_many :author_authorables, as: :authorable
  has_many :authors, through: :author_authorables

  validates :name, presence: true
end
