class ModPackContent < ApplicationRecord
  belongs_to :content, polymorphic: true, optional: false
  belongs_to :mod_pack, optional: false
end
