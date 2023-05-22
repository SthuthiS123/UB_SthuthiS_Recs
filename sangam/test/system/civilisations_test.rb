require "application_system_test_case"

class CivilisationsTest < ApplicationSystemTestCase
  setup do
    @civilisation = civilisations(:one)
  end

  test "visiting the index" do
    visit civilisations_url
    assert_selector "h1", text: "Civilisations"
  end

  test "should create civilisation" do
    visit civilisations_url
    click_on "New civilisation"

    fill_in "Subtitle", with: @civilisation.Subtitle
    fill_in "Title", with: @civilisation.Title
    fill_in "Description", with: @civilisation.description
    click_on "Create Civilisation"

    assert_text "Civilisation was successfully created"
    click_on "Back"
  end

  test "should update Civilisation" do
    visit civilisation_url(@civilisation)
    click_on "Edit this civilisation", match: :first

    fill_in "Subtitle", with: @civilisation.Subtitle
    fill_in "Title", with: @civilisation.Title
    fill_in "Description", with: @civilisation.description
    click_on "Update Civilisation"

    assert_text "Civilisation was successfully updated"
    click_on "Back"
  end

  test "should destroy Civilisation" do
    visit civilisation_url(@civilisation)
    click_on "Destroy this civilisation", match: :first

    assert_text "Civilisation was successfully destroyed"
  end
end
