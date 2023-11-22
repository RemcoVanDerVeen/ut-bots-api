require "application_system_test_case"

class PlayerModelSkinFacesTest < ApplicationSystemTestCase
  setup do
    @player_model_skin_face = player_model_skin_faces(:one)
  end

  test "visiting the index" do
    visit player_model_skin_faces_url
    assert_selector "h1", text: "Player model skin faces"
  end

  test "should create player model skin face" do
    visit player_model_skin_faces_url
    click_on "New player model skin face"

    click_on "Create Player model skin face"

    assert_text "Player model skin face was successfully created"
    click_on "Back"
  end

  test "should update Player model skin face" do
    visit player_model_skin_face_url(@player_model_skin_face)
    click_on "Edit this player model skin face", match: :first

    click_on "Update Player model skin face"

    assert_text "Player model skin face was successfully updated"
    click_on "Back"
  end

  test "should destroy Player model skin face" do
    visit player_model_skin_face_url(@player_model_skin_face)
    click_on "Destroy this player model skin face", match: :first

    assert_text "Player model skin face was successfully destroyed"
  end
end
