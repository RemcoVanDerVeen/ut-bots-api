require "application_system_test_case"

class ModSubTypesTest < ApplicationSystemTestCase
  setup do
    @mod_sub_type = mod_sub_types(:one)
  end

  test "visiting the index" do
    visit mod_sub_types_url
    assert_selector "h1", text: "Mod sub types"
  end

  test "should create mod sub type" do
    visit mod_sub_types_url
    click_on "New mod sub type"

    fill_in "Name", with: @mod_sub_type.name
    click_on "Create Mod sub type"

    assert_text "Mod sub type was successfully created"
    click_on "Back"
  end

  test "should update Mod sub type" do
    visit mod_sub_type_url(@mod_sub_type)
    click_on "Edit this mod sub type", match: :first

    fill_in "Name", with: @mod_sub_type.name
    click_on "Update Mod sub type"

    assert_text "Mod sub type was successfully updated"
    click_on "Back"
  end

  test "should destroy Mod sub type" do
    visit mod_sub_type_url(@mod_sub_type)
    click_on "Destroy this mod sub type", match: :first

    assert_text "Mod sub type was successfully destroyed"
  end
end
