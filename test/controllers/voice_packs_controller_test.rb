require "test_helper"

class VoicePacksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @voice_pack = voice_packs(:one)
  end

  test "should get index" do
    get voice_packs_url
    assert_response :success
  end

  test "should get new" do
    get new_voice_pack_url
    assert_response :success
  end

  test "should create voice_pack" do
    assert_difference("VoicePack.count") do
      post voice_packs_url, params: { voice_pack: {  } }
    end

    assert_redirected_to voice_pack_url(VoicePack.last)
  end

  test "should show voice_pack" do
    get voice_pack_url(@voice_pack)
    assert_response :success
  end

  test "should get edit" do
    get edit_voice_pack_url(@voice_pack)
    assert_response :success
  end

  test "should update voice_pack" do
    patch voice_pack_url(@voice_pack), params: { voice_pack: {  } }
    assert_redirected_to voice_pack_url(@voice_pack)
  end

  test "should destroy voice_pack" do
    assert_difference("VoicePack.count", -1) do
      delete voice_pack_url(@voice_pack)
    end

    assert_redirected_to voice_packs_url
  end
end
