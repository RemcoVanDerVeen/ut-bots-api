require "test_helper"

class CombatStyleTest < ActiveSupport::TestCase
  test "should be valid with valid attributes" do
    combat_style = CombatStyle.new(name: "Aggressive", ut_value: 0.5)
    assert combat_style.valid?
  end

  test "should require name" do
    combat_style = CombatStyle.new(name: nil, ut_value: 0.5)
    assert_not combat_style.valid?
    assert_includes combat_style.errors[:name], "can't be blank"
  end

  test "should require ut_value" do
    combat_style = CombatStyle.new(name: "Aggressive", ut_value: nil)
    assert_not combat_style.valid?
    assert_includes combat_style.errors[:ut_value], "can't be blank"
  end

  test "should validate ut_value is between -1 and 1" do
    combat_style = CombatStyle.new(name: "Aggressive", ut_value: -1.5)
    assert_not combat_style.valid?
    
    combat_style.ut_value = 1.5
    assert_not combat_style.valid?
    
    combat_style.ut_value = 0
    assert combat_style.valid?
  end

  test "ut_value_to_percentage should convert value to percentage" do
    combat_style = CombatStyle.new(name: "Aggressive", ut_value: 0)
    assert_equal 50, combat_style.ut_value_to_percentage
    
    combat_style.ut_value = -1
    assert_equal 0, combat_style.ut_value_to_percentage
    
    combat_style.ut_value = 1
    assert_equal 100, combat_style.ut_value_to_percentage
  end
end
