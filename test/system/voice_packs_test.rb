require "application_system_test_case"

class VoicePacksTest < ApplicationSystemTestCase
  setup do
    @voice_pack = voice_packs(:one)
  end

  test "visiting the index" do
    visit voice_packs_url
    assert_selector "h1", text: "Voice packs"
  end

  test "should create voice pack" do
    visit voice_packs_url
    click_on "New voice pack"

    click_on "Create Voice pack"

    assert_text "Voice pack was successfully created"
    click_on "Back"
  end

  test "should update Voice pack" do
    visit voice_pack_url(@voice_pack)
    click_on "Edit this voice pack", match: :first

    click_on "Update Voice pack"

    assert_text "Voice pack was successfully updated"
    click_on "Back"
  end

  test "should destroy Voice pack" do
    visit voice_pack_url(@voice_pack)
    click_on "Destroy this voice pack", match: :first

    assert_text "Voice pack was successfully destroyed"
  end
end
