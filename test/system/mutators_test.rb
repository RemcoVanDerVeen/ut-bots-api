require "application_system_test_case"

class MutatorsTest < ApplicationSystemTestCase
  setup do
    @mutator = mutators(:one)
  end

  test "visiting the index" do
    visit mutators_url
    assert_selector "h1", text: "Mutators"
  end

  test "should create mutator" do
    visit mutators_url
    click_on "New mutator"

    fill_in "Description", with: @mutator.description
    fill_in "Name", with: @mutator.name
    click_on "Create Mutator"

    assert_text "Mutator was successfully created"
    click_on "Back"
  end

  test "should update Mutator" do
    visit mutator_url(@mutator)
    click_on "Edit this mutator", match: :first

    fill_in "Description", with: @mutator.description
    fill_in "Name", with: @mutator.name
    click_on "Update Mutator"

    assert_text "Mutator was successfully updated"
    click_on "Back"
  end

  test "should destroy Mutator" do
    visit mutator_url(@mutator)
    click_on "Destroy this mutator", match: :first

    assert_text "Mutator was successfully destroyed"
  end
end
