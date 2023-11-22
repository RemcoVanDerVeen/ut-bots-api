class Colour < ApplicationRecord
  validates :ut_value, presence: true, if: :is_team_colour?
  validate :validate_at_least_one_identifier

  def validate_at_least_one_identifier
    if [name, hex, rgb].none?
      errors.add(self, "needs at least one identifier.")
    end
  end
end
