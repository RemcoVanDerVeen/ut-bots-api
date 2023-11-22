require "test_helper"

class PlayerModelSkinFacesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @player_model_skin_face = player_model_skin_faces(:one)
  end

  test "should get index" do
    get player_model_skin_faces_url
    assert_response :success
  end

  test "should get new" do
    get new_player_model_skin_face_url
    assert_response :success
  end

  test "should create player_model_skin_face" do
    assert_difference("PlayerModelSkinFace.count") do
      post player_model_skin_faces_url, params: { player_model_skin_face: {  } }
    end

    assert_redirected_to player_model_skin_face_url(PlayerModelSkinFace.last)
  end

  test "should show player_model_skin_face" do
    get player_model_skin_face_url(@player_model_skin_face)
    assert_response :success
  end

  test "should get edit" do
    get edit_player_model_skin_face_url(@player_model_skin_face)
    assert_response :success
  end

  test "should update player_model_skin_face" do
    patch player_model_skin_face_url(@player_model_skin_face), params: { player_model_skin_face: {  } }
    assert_redirected_to player_model_skin_face_url(@player_model_skin_face)
  end

  test "should destroy player_model_skin_face" do
    assert_difference("PlayerModelSkinFace.count", -1) do
      delete player_model_skin_face_url(@player_model_skin_face)
    end

    assert_redirected_to player_model_skin_faces_url
  end
end
