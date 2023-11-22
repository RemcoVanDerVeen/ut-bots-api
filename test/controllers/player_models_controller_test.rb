require "test_helper"

class PlayerModelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @player_model = player_models(:one)
  end

  test "should get index" do
    get player_models_url
    assert_response :success
  end

  test "should get new" do
    get new_player_model_url
    assert_response :success
  end

  test "should create player_model" do
    assert_difference("PlayerModel.count") do
      post player_models_url, params: { player_model: {  } }
    end

    assert_redirected_to player_model_url(PlayerModel.last)
  end

  test "should show player_model" do
    get player_model_url(@player_model)
    assert_response :success
  end

  test "should get edit" do
    get edit_player_model_url(@player_model)
    assert_response :success
  end

  test "should update player_model" do
    patch player_model_url(@player_model), params: { player_model: {  } }
    assert_redirected_to player_model_url(@player_model)
  end

  test "should destroy player_model" do
    assert_difference("PlayerModel.count", -1) do
      delete player_model_url(@player_model)
    end

    assert_redirected_to player_models_url
  end
end
