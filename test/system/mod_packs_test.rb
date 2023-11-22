require "application_system_test_case"

class ModPacksTest < ApplicationSystemTestCase
  setup do
    @mod_pack = mod_packs(:one)
  end

  test "visiting the index" do
    visit mod_packs_url
    assert_selector "h1", text: "Mod packs"
  end

  test "should create mod pack" do
    visit mod_packs_url
    click_on "New mod pack"

    fill_in "Name", with: @mod_pack.name
    click_on "Create Mod pack"

    assert_text "Mod pack was successfully created"
    click_on "Back"
  end

  test "should update Mod pack" do
    visit mod_pack_url(@mod_pack)
    click_on "Edit this mod pack", match: :first

    fill_in "Name", with: @mod_pack.name
    click_on "Update Mod pack"

    assert_text "Mod pack was successfully updated"
    click_on "Back"
  end

  test "should destroy Mod pack" do
    visit mod_pack_url(@mod_pack)
    click_on "Destroy this mod pack", match: :first

    assert_text "Mod pack was successfully destroyed"
  end
end
