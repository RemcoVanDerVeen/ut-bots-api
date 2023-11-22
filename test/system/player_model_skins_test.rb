require "application_system_test_case"

class PlayerModelSkinsTest < ApplicationSystemTestCase
  setup do
    @player_model_skin = player_model_skins(:one)
  end

  test "visiting the index" do
    visit player_model_skins_url
    assert_selector "h1", text: "Player model skins"
  end

  test "should create player model skin" do
    visit player_model_skins_url
    click_on "New player model skin"

    click_on "Create Player model skin"

    assert_text "Player model skin was successfully created"
    click_on "Back"
  end

  test "should update Player model skin" do
    visit player_model_skin_url(@player_model_skin)
    click_on "Edit this player model skin", match: :first

    click_on "Update Player model skin"

    assert_text "Player model skin was successfully updated"
    click_on "Back"
  end

  test "should destroy Player model skin" do
    visit player_model_skin_url(@player_model_skin)
    click_on "Destroy this player model skin", match: :first

    assert_text "Player model skin was successfully destroyed"
  end
end
