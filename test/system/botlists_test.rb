require "application_system_test_case"

class BotlistsTest < ApplicationSystemTestCase
  setup do
    @botlist = botlists(:one)
  end

  test "visiting the index" do
    visit botlists_url
    assert_selector "h1", text: "Botlists"
  end

  test "should create botlist" do
    visit botlists_url
    click_on "New botlist"

    click_on "Create Botlist"

    assert_text "Botlist was successfully created"
    click_on "Back"
  end

  test "should update Botlist" do
    visit botlist_url(@botlist)
    click_on "Edit this botlist", match: :first

    click_on "Update Botlist"

    assert_text "Botlist was successfully updated"
    click_on "Back"
  end

  test "should destroy Botlist" do
    visit botlist_url(@botlist)
    click_on "Destroy this botlist", match: :first

    assert_text "Botlist was successfully destroyed"
  end
end
