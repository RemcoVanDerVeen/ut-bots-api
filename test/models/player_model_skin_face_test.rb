require "test_helper"

class PlayerModelSkinFaceTest < ActiveSupport::TestCase
  test "should require name" do
    face = PlayerModelSkinFace.new(name: nil)

    assert_not face.valid?
    assert_includes face.errors[:name], "can't be blank"
  end

  test "should require ut_value" do
    face = PlayerModelSkinFace.new(ut_value: nil)

    assert_not face.valid?
    assert_includes face.errors[:ut_value], "can't be blank"
  end

  test "should belong to player_model_skin" do
    assert_respond_to PlayerModelSkinFace.new, :player_model_skin
  end
end
