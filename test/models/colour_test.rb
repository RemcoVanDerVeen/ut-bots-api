require "test_helper"

class ColourTest < ActiveSupport::TestCase
  test "should be valid with valid attributes" do
    colour = build(:colour)

    assert_predicate colour, :valid?
  end

  test "should be valid with name" do
    colour = build(:colour, :minimal)

    assert_predicate colour, :valid?
  end

  test "should be valid with hex" do
    colour = build(:colour, name: nil, rgb: nil, hex: "#FF0000")

    assert_predicate colour, :valid?
  end

  test "should be valid with rgb" do
    colour = build(:colour, name: nil, hex: nil, rgb: "255,0,0")

    assert_predicate colour, :valid?
  end

  test "should require at least one identifier" do
    colour = build(:colour, name: nil, hex: nil, rgb: nil)

    assert_not colour.valid?
    assert_includes colour.errors[:base], "needs at least one identifier."
  end

  test "should require ut_value when is_team_colour" do
    colour = build(:colour, :team_colour, ut_value: nil)

    assert_not colour.valid?
    assert_includes colour.errors[:ut_value], "can't be blank"
  end

  test "should not require ut_value when not is_team_colour" do
    colour = build(:colour, is_team_colour: false, ut_value: nil)

    assert_predicate colour, :valid?
  end
end
