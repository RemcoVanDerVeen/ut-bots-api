class PlayerModelSkin < ApplicationRecord
  belongs_to :player_model, optional: false

  validates :name, :ut_value, presence: true
end
