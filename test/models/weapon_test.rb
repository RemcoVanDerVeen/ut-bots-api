require "test_helper"

class WeaponTest < ActiveSupport::TestCase
  test "should be valid with valid attributes" do
    weapon = Weapon.new(name: "Shock Rifle", ut_value: "ShockRifle")
    assert weapon.valid?
  end

  test "should require name" do
    weapon = Weapon.new(name: nil, ut_value: "ShockRifle")
    assert_not weapon.valid?
    assert_includes weapon.errors[:name], "can't be blank"
  end

  test "should require ut_value" do
    weapon = Weapon.new(name: "Shock Rifle", ut_value: nil)
    assert_not weapon.valid?
    assert_includes weapon.errors[:ut_value], "can't be blank"
  end
end
