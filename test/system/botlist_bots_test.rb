require "application_system_test_case"

class BotlistBotsTest < ApplicationSystemTestCase
  setup do
    @botlist_bot = botlist_bots(:one)
  end

  test "visiting the index" do
    visit botlist_bots_url
    assert_selector "h1", text: "Botlist bots"
  end

  test "should create botlist bot" do
    visit botlist_bots_url
    click_on "New botlist bot"

    click_on "Create Botlist bot"

    assert_text "Botlist bot was successfully created"
    click_on "Back"
  end

  test "should update Botlist bot" do
    visit botlist_bot_url(@botlist_bot)
    click_on "Edit this botlist bot", match: :first

    click_on "Update Botlist bot"

    assert_text "Botlist bot was successfully updated"
    click_on "Back"
  end

  test "should destroy Botlist bot" do
    visit botlist_bot_url(@botlist_bot)
    click_on "Destroy this botlist bot", match: :first

    assert_text "Botlist bot was successfully destroyed"
  end
end
