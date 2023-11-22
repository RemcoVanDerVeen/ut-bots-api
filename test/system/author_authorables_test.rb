require "application_system_test_case"

class AuthorablesTest < ApplicationSystemTestCase
  setup do
    @authorable = authorables(:one)
  end

  test "visiting the index" do
    visit authorables_url
    assert_selector "h1", text: "Authorables"
  end

  test "should create authorable" do
    visit authorables_url
    click_on "New authorable"

    click_on "Create Authorable"

    assert_text "Authorable was successfully created"
    click_on "Back"
  end

  test "should update Authorable" do
    visit authorable_url(@authorable)
    click_on "Edit this authorable", match: :first

    click_on "Update Authorable"

    assert_text "Authorable was successfully updated"
    click_on "Back"
  end

  test "should destroy Authorable" do
    visit authorable_url(@authorable)
    click_on "Destroy this authorable", match: :first

    assert_text "Authorable was successfully destroyed"
  end
end
