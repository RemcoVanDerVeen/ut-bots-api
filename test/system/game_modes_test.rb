require "application_system_test_case"

class GameModesTest < ApplicationSystemTestCase
  setup do
    @game_mode = game_modes(:one)
  end

  test "visiting the index" do
    visit game_modes_url
    assert_selector "h1", text: "Game modes"
  end

  test "should create game mode" do
    visit game_modes_url
    click_on "New game mode"

    click_on "Create Game mode"

    assert_text "Game mode was successfully created"
    click_on "Back"
  end

  test "should update Game mode" do
    visit game_mode_url(@game_mode)
    click_on "Edit this game mode", match: :first

    click_on "Update Game mode"

    assert_text "Game mode was successfully updated"
    click_on "Back"
  end

  test "should destroy Game mode" do
    visit game_mode_url(@game_mode)
    click_on "Destroy this game mode", match: :first

    assert_text "Game mode was successfully destroyed"
  end
end
