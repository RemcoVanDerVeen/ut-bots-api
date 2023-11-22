require "application_system_test_case"

class PlayerModelsTest < ApplicationSystemTestCase
  setup do
    @player_model = player_models(:one)
  end

  test "visiting the index" do
    visit player_models_url
    assert_selector "h1", text: "Player models"
  end

  test "should create player model" do
    visit player_models_url
    click_on "New player model"

    click_on "Create Player model"

    assert_text "Player model was successfully created"
    click_on "Back"
  end

  test "should update Player model" do
    visit player_model_url(@player_model)
    click_on "Edit this player model", match: :first

    click_on "Update Player model"

    assert_text "Player model was successfully updated"
    click_on "Back"
  end

  test "should destroy Player model" do
    visit player_model_url(@player_model)
    click_on "Destroy this player model", match: :first

    assert_text "Player model was successfully destroyed"
  end
end
