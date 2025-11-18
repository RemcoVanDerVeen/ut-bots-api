require "test_helper"

class ColourTest < ActiveSupport::TestCase
  test "should be valid with name" do
    colour = Colour.new(name: "Red")
    assert colour.valid?
  end

  test "should be valid with hex" do
    colour = Colour.new(hex: "#FF0000")
    assert colour.valid?
  end

  test "should be valid with rgb" do
    colour = Colour.new(rgb: "255,0,0")
    assert colour.valid?
  end

  test "should require at least one identifier" do
    colour = Colour.new(name: nil, hex: nil, rgb: nil)
    assert_not colour.valid?
    assert_includes colour.errors.full_messages, "Colour needs at least one identifier."
  end

  test "should require ut_value when is_team_colour" do
    colour = Colour.new(name: "Red", is_team_colour: true, ut_value: nil)
    assert_not colour.valid?
    assert_includes colour.errors[:ut_value], "can't be blank"
  end

  test "should not require ut_value when not is_team_colour" do
    colour = Colour.new(name: "Custom", is_team_colour: false, ut_value: nil)
    assert colour.valid?
  end
end
