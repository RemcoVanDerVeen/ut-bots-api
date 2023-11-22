require "application_system_test_case"

class XbotsConfigurationBotlistsTest < ApplicationSystemTestCase
  setup do
    @xbots_configuration_botlist = xbots_configuration_botlists(:one)
  end

  test "visiting the index" do
    visit xbots_configuration_botlists_url
    assert_selector "h1", text: "Xbots configuration botlists"
  end

  test "should create xbots configuration botlist" do
    visit xbots_configuration_botlists_url
    click_on "New xbots configuration botlist"

    click_on "Create Xbots configuration botlist"

    assert_text "Xbots configuration botlist was successfully created"
    click_on "Back"
  end

  test "should update Xbots configuration botlist" do
    visit xbots_configuration_botlist_url(@xbots_configuration_botlist)
    click_on "Edit this xbots configuration botlist", match: :first

    click_on "Update Xbots configuration botlist"

    assert_text "Xbots configuration botlist was successfully updated"
    click_on "Back"
  end

  test "should destroy Xbots configuration botlist" do
    visit xbots_configuration_botlist_url(@xbots_configuration_botlist)
    click_on "Destroy this xbots configuration botlist", match: :first

    assert_text "Xbots configuration botlist was successfully destroyed"
  end
end
