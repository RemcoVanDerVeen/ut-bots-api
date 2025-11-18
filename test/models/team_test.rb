require "test_helper"

class TeamTest < ActiveSupport::TestCase
  test "should be valid with valid attributes" do
    team = Team.new(name: "Red Team")

    assert_predicate team, :valid?
  end

  test "should require name" do
    team = Team.new(name: nil)

    assert_not team.valid?
    assert_includes team.errors[:name], "can't be blank"
  end
end
