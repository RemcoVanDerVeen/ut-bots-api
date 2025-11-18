require "test_helper"

class XbotsConfigurationBotlistTest < ActiveSupport::TestCase
  test "should belong to botlist" do
    assert_respond_to XbotsConfigurationBotlist.new, :botlist
  end

  test "should belong to xbots_configuration" do
    assert_respond_to XbotsConfigurationBotlist.new, :xbots_configuration
  end
end
