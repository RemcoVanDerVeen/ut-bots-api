require "test_helper"

class GameModesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @game_mode = game_modes(:one)
  end

  test "should get index" do
    get game_modes_url
    assert_response :success
  end

  test "should get new" do
    get new_game_mode_url
    assert_response :success
  end

  test "should create game_mode" do
    assert_difference("GameMode.count") do
      post game_modes_url, params: { game_mode: {  } }
    end

    assert_redirected_to game_mode_url(GameMode.last)
  end

  test "should show game_mode" do
    get game_mode_url(@game_mode)
    assert_response :success
  end

  test "should get edit" do
    get edit_game_mode_url(@game_mode)
    assert_response :success
  end

  test "should update game_mode" do
    patch game_mode_url(@game_mode), params: { game_mode: {  } }
    assert_redirected_to game_mode_url(@game_mode)
  end

  test "should destroy game_mode" do
    assert_difference("GameMode.count", -1) do
      delete game_mode_url(@game_mode)
    end

    assert_redirected_to game_modes_url
  end
end
