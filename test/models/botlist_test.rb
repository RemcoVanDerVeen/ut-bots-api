require "test_helper"

class BotlistTest < ActiveSupport::TestCase
  setup do
    @botlist = build(:botlist)
  end

  test "should be valid with valid attributes" do
    assert_predicate @botlist, :valid?
  end

  test "should require name" do
    @botlist.name = nil

    assert_not @botlist.valid?
    assert_includes @botlist.errors[:name], "can't be blank"
  end
end
