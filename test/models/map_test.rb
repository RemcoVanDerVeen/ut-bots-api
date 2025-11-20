require "test_helper"

class MapTest < ActiveSupport::TestCase
  test "should be valid with valid attributes" do
    map = Map.new(name: "DM-Deck16")

    assert_predicate map, :valid?
  end

  test "should require name" do
    map = Map.new(name: nil)

    assert_not map.valid?
    assert_includes map.errors[:name], "can't be blank"
  end
end
