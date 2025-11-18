require "test_helper"

class VoicePackTest < ActiveSupport::TestCase
  test "should be valid with valid attributes" do
    voice_pack = VoicePack.new(name: "Male One", ut_value: "MaleOne")
    assert voice_pack.valid?
  end

  test "should require name" do
    voice_pack = VoicePack.new(name: nil, ut_value: "MaleOne")
    assert_not voice_pack.valid?
    assert_includes voice_pack.errors[:name], "can't be blank"
  end

  test "should require ut_value" do
    voice_pack = VoicePack.new(name: "Male One", ut_value: nil)
    assert_not voice_pack.valid?
    assert_includes voice_pack.errors[:ut_value], "can't be blank"
  end

  test "should have many player_models through player_model_voice_packs" do
    assert_respond_to VoicePack.new, :player_models
  end
end
