require "test_helper"

class XbotsConfigurationTest < ActiveSupport::TestCase
  test "should be valid with valid attributes" do
    config = XbotsConfiguration.new(name: "My Configuration")
    assert config.valid?
  end

  test "should require name" do
    config = XbotsConfiguration.new(name: nil)
    assert_not config.valid?
    assert_includes config.errors[:name], "can't be blank"
  end
end
