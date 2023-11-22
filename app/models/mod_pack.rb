class ModPack < ApplicationRecord
  has_many :mod_pack_contents

  validates :name, presence: true
end
