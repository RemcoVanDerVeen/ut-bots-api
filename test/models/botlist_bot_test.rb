require "test_helper"

class BotlistBotTest < ActiveSupport::TestCase
  test "should require position" do
    botlist_bot = BotlistBot.new(position: nil)
    assert_not botlist_bot.valid?
    assert_includes botlist_bot.errors[:position], "can't be blank"
  end

  test "should belong to bot" do
    assert_respond_to BotlistBot.new, :bot
  end

  test "should belong to botlist" do
    assert_respond_to BotlistBot.new, :botlist
  end
end
