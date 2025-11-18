require "test_helper"

class PlayerModelSkinTest < ActiveSupport::TestCase
  test "should require name" do
    skin = PlayerModelSkin.new(name: nil)
    assert_not skin.valid?
    assert_includes skin.errors[:name], "can't be blank"
  end

  test "should require ut_value" do
    skin = PlayerModelSkin.new(ut_value: nil)
    assert_not skin.valid?
    assert_includes skin.errors[:ut_value], "can't be blank"
  end

  test "should belong to player_model" do
    assert_respond_to PlayerModelSkin.new, :player_model
  end
end
