require "application_system_test_case"

class MythologiesTest < ApplicationSystemTestCase
  setup do
    @mythology = mythologies(:one)
  end

  test "visiting the index" do
    visit mythologies_url
    assert_selector "h1", text: "Mythologies"
  end

  test "should create mythology" do
    visit mythologies_url
    click_on "New mythology"

    fill_in "Subtitle", with: @mythology.Subtitle
    fill_in "Title", with: @mythology.Title
    fill_in "Description", with: @mythology.description
    click_on "Create Mythology"

    assert_text "Mythology was successfully created"
    click_on "Back"
  end

  test "should update Mythology" do
    visit mythology_url(@mythology)
    click_on "Edit this mythology", match: :first

    fill_in "Subtitle", with: @mythology.Subtitle
    fill_in "Title", with: @mythology.Title
    fill_in "Description", with: @mythology.description
    click_on "Update Mythology"

    assert_text "Mythology was successfully updated"
    click_on "Back"
  end

  test "should destroy Mythology" do
    visit mythology_url(@mythology)
    click_on "Destroy this mythology", match: :first

    assert_text "Mythology was successfully destroyed"
  end
end
