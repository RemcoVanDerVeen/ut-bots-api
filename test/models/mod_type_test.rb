require "test_helper"

class ModTypeTest < ActiveSupport::TestCase
  test "should be valid with valid attributes" do
    mod_type = ModType.new(name: "Weapons")

    assert_predicate mod_type, :valid?
  end

  test "should require name" do
    mod_type = ModType.new(name: nil)

    assert_not mod_type.valid?
    assert_includes mod_type.errors[:name], "can't be blank"
  end
end
