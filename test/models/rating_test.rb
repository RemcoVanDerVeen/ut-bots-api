require "test_helper"

class RatingTest < ActiveSupport::TestCase
  test "should be valid with valid attributes" do
    rating = build(:rating)

    assert_predicate rating, :valid?
  end

  test "should require value" do
    rating = build(:rating, value: nil)

    assert_not rating.valid?
    assert_includes rating.errors[:value], "can't be blank"
  end

  test "should validate value is between 1 and 10" do
    rating = build(:rating, value: 0)

    assert_not rating.valid?

    rating.value = 11

    assert_not rating.valid?

    rating.value = 5

    assert_predicate rating, :valid?, rating.errors.full_messages.join(", ")
  end

  test "should belong to rateable polymorphically" do
    rating = create(:rating)

    assert_instance_of Bot, rating.rateable
  end

  test "should work with different rateable types" do
    weapon_rating = create(:rating, :for_weapon)

    assert_instance_of Weapon, weapon_rating.rateable

    map_rating = create(:rating, :for_map)

    assert_instance_of Map, map_rating.rateable
  end
end
