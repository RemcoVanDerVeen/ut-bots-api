require "test_helper"

class PlayerModelSkinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @player_model_skin = player_model_skins(:one)
  end

  test "should get index" do
    get player_model_skins_url
    assert_response :success
  end

  test "should get new" do
    get new_player_model_skin_url
    assert_response :success
  end

  test "should create player_model_skin" do
    assert_difference("PlayerModelSkin.count") do
      post player_model_skins_url, params: { player_model_skin: {  } }
    end

    assert_redirected_to player_model_skin_url(PlayerModelSkin.last)
  end

  test "should show player_model_skin" do
    get player_model_skin_url(@player_model_skin)
    assert_response :success
  end

  test "should get edit" do
    get edit_player_model_skin_url(@player_model_skin)
    assert_response :success
  end

  test "should update player_model_skin" do
    patch player_model_skin_url(@player_model_skin), params: { player_model_skin: {  } }
    assert_redirected_to player_model_skin_url(@player_model_skin)
  end

  test "should destroy player_model_skin" do
    assert_difference("PlayerModelSkin.count", -1) do
      delete player_model_skin_url(@player_model_skin)
    end

    assert_redirected_to player_model_skins_url
  end
end
