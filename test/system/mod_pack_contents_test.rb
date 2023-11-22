require "application_system_test_case"

class ModPackContentsTest < ApplicationSystemTestCase
  setup do
    @mod_pack_content = mod_pack_contents(:one)
  end

  test "visiting the index" do
    visit mod_pack_contents_url
    assert_selector "h1", text: "Mod pack contents"
  end

  test "should create mod pack content" do
    visit mod_pack_contents_url
    click_on "New mod pack content"

    click_on "Create Mod pack content"

    assert_text "Mod pack content was successfully created"
    click_on "Back"
  end

  test "should update Mod pack content" do
    visit mod_pack_content_url(@mod_pack_content)
    click_on "Edit this mod pack content", match: :first

    click_on "Update Mod pack content"

    assert_text "Mod pack content was successfully updated"
    click_on "Back"
  end

  test "should destroy Mod pack content" do
    visit mod_pack_content_url(@mod_pack_content)
    click_on "Destroy this mod pack content", match: :first

    assert_text "Mod pack content was successfully destroyed"
  end
end
