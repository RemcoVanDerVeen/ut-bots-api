require "test_helper"

class MutatorTest < ActiveSupport::TestCase
  test "should be valid with valid attributes" do
    mutator = Mutator.new(name: "InstaGib")
    assert mutator.valid?
  end

  test "should require name" do
    mutator = Mutator.new(name: nil)
    assert_not mutator.valid?
    assert_includes mutator.errors[:name], "can't be blank"
  end

  test "should belong to game_mode optionally" do
    assert_respond_to Mutator.new, :game_mode
  end
end
