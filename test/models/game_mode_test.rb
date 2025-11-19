require "test_helper"

class GameModeTest < ActiveSupport::TestCase
  test "should be valid with valid attributes" do
    game_mode = GameMode.new(name: "Deathmatch", ut_value: "DeathMatch")

    assert_predicate game_mode, :valid?
  end

  test "should require name" do
    game_mode = GameMode.new(name: nil, ut_value: "DeathMatch")

    assert_not game_mode.valid?
    assert_includes game_mode.errors[:name], "can't be blank"
  end

  test "should require ut_value" do
    game_mode = GameMode.new(name: "Deathmatch", ut_value: nil)

    assert_not game_mode.valid?
    assert_includes game_mode.errors[:ut_value], "can't be blank"
  end

  test "should have many mutators" do
    assert_respond_to GameMode.new, :mutators
  end
end
