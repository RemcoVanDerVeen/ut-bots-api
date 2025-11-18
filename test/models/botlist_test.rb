require "test_helper"

class BotlistTest < ActiveSupport::TestCase
  setup do
    @botlist = build(:botlist, :without_configuration)
  end

  test "should be valid with valid attributes" do
    assert_predicate @botlist, :valid?
  end

  test "should require name" do
    @botlist.name = nil

    assert_not @botlist.valid?
    assert_includes @botlist.errors[:name], "can't be blank"
  end

  test "should belong to xbots_configuration optionally" do
    assert_respond_to @botlist, :xbots_configuration
  end

  test "should validate uniqueness of position scoped to xbots_configuration" do
    config = create(:xbots_configuration)
    botlist1 = create(:botlist, xbots_configuration: config, position: 1)
    botlist2 = build(:botlist, xbots_configuration: config, position: 1)

    assert_not botlist2.valid?
    assert_includes botlist2.errors[:position], "has already been taken"
  end
end
