require "application_system_test_case"

class ModTypesTest < ApplicationSystemTestCase
  setup do
    @mod_type = mod_types(:one)
  end

  test "visiting the index" do
    visit mod_types_url
    assert_selector "h1", text: "Mod types"
  end

  test "should create mod type" do
    visit mod_types_url
    click_on "New mod type"

    fill_in "Name", with: @mod_type.name
    click_on "Create Mod type"

    assert_text "Mod type was successfully created"
    click_on "Back"
  end

  test "should update Mod type" do
    visit mod_type_url(@mod_type)
    click_on "Edit this mod type", match: :first

    fill_in "Name", with: @mod_type.name
    click_on "Update Mod type"

    assert_text "Mod type was successfully updated"
    click_on "Back"
  end

  test "should destroy Mod type" do
    visit mod_type_url(@mod_type)
    click_on "Destroy this mod type", match: :first

    assert_text "Mod type was successfully destroyed"
  end
end
