require "application_system_test_case"

class XbotsConfigurationsTest < ApplicationSystemTestCase
  setup do
    @xbots_configuration = xbots_configurations(:one)
  end

  test "visiting the index" do
    visit xbots_configurations_url
    assert_selector "h1", text: "Xbots configurations"
  end

  test "should create xbots configuration" do
    visit xbots_configurations_url
    click_on "New xbots configuration"

    click_on "Create Xbots configuration"

    assert_text "Xbots configuration was successfully created"
    click_on "Back"
  end

  test "should update Xbots configuration" do
    visit xbots_configuration_url(@xbots_configuration)
    click_on "Edit this xbots configuration", match: :first

    click_on "Update Xbots configuration"

    assert_text "Xbots configuration was successfully updated"
    click_on "Back"
  end

  test "should destroy Xbots configuration" do
    visit xbots_configuration_url(@xbots_configuration)
    click_on "Destroy this xbots configuration", match: :first

    assert_text "Xbots configuration was successfully destroyed"
  end
end
