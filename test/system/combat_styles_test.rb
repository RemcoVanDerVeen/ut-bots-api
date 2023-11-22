require "application_system_test_case"

class CombatStylesTest < ApplicationSystemTestCase
  setup do
    @combat_style = combat_styles(:one)
  end

  test "visiting the index" do
    visit combat_styles_url
    assert_selector "h1", text: "Combat styles"
  end

  test "should create combat style" do
    visit combat_styles_url
    click_on "New combat style"

    click_on "Create Combat style"

    assert_text "Combat style was successfully created"
    click_on "Back"
  end

  test "should update Combat style" do
    visit combat_style_url(@combat_style)
    click_on "Edit this combat style", match: :first

    click_on "Update Combat style"

    assert_text "Combat style was successfully updated"
    click_on "Back"
  end

  test "should destroy Combat style" do
    visit combat_style_url(@combat_style)
    click_on "Destroy this combat style", match: :first

    assert_text "Combat style was successfully destroyed"
  end
end
