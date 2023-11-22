require "application_system_test_case"

class TeamBotsTest < ApplicationSystemTestCase
  setup do
    @team_bot = team_bots(:one)
  end

  test "visiting the index" do
    visit team_bots_url
    assert_selector "h1", text: "Team bots"
  end

  test "should create team bot" do
    visit team_bots_url
    click_on "New team bot"

    click_on "Create Team bot"

    assert_text "Team bot was successfully created"
    click_on "Back"
  end

  test "should update Team bot" do
    visit team_bot_url(@team_bot)
    click_on "Edit this team bot", match: :first

    click_on "Update Team bot"

    assert_text "Team bot was successfully updated"
    click_on "Back"
  end

  test "should destroy Team bot" do
    visit team_bot_url(@team_bot)
    click_on "Destroy this team bot", match: :first

    assert_text "Team bot was successfully destroyed"
  end
end
