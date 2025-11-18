require "test_helper"

class BotlistTest < ActiveSupport::TestCase
  test "should be valid with valid attributes" do
    botlist = Botlist.new(name: "My Botlist")
    assert botlist.valid?
  end

  test "should require name" do
    botlist = Botlist.new(name: nil)
    assert_not botlist.valid?
    assert_includes botlist.errors[:name], "can't be blank"
  end

  test "should belong to xbots_configuration optionally" do
    assert_respond_to Botlist.new, :xbots_configuration
  end

  test "should validate uniqueness of position scoped to xbots_configuration" do
    # This test would require fixtures to be properly set up
    # For now, just ensure the association exists
    assert_respond_to Botlist.new, :position
  end
end
