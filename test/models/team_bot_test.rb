require "test_helper"

class TeamBotTest < ActiveSupport::TestCase
  test "should require position" do
    team_bot = TeamBot.new(position: nil)
    assert_not team_bot.valid?
    assert_includes team_bot.errors[:position], "can't be blank"
  end

  test "should belong to bot" do
    assert_respond_to TeamBot.new, :bot
  end

  test "should belong to team" do
    assert_respond_to TeamBot.new, :team
  end
end
