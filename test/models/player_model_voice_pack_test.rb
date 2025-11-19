require "test_helper"

class PlayerModelVoicePackTest < ActiveSupport::TestCase
  test "should belong to player_model" do
    assert_respond_to PlayerModelVoicePack.new, :player_model
  end

  test "should belong to voice_pack" do
    assert_respond_to PlayerModelVoicePack.new, :voice_pack
  end
end
