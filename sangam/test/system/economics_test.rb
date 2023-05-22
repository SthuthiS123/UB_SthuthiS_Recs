require "application_system_test_case"

class EconomicsTest < ApplicationSystemTestCase
  setup do
    @economic = economics(:one)
  end

  test "visiting the index" do
    visit economics_url
    assert_selector "h1", text: "Economics"
  end

  test "should create economic" do
    visit economics_url
    click_on "New economic"

    fill_in "Subtitle", with: @economic.Subtitle
    fill_in "Title", with: @economic.Title
    fill_in "Description", with: @economic.description
    click_on "Create Economic"

    assert_text "Economic was successfully created"
    click_on "Back"
  end

  test "should update Economic" do
    visit economic_url(@economic)
    click_on "Edit this economic", match: :first

    fill_in "Subtitle", with: @economic.Subtitle
    fill_in "Title", with: @economic.Title
    fill_in "Description", with: @economic.description
    click_on "Update Economic"

    assert_text "Economic was successfully updated"
    click_on "Back"
  end

  test "should destroy Economic" do
    visit economic_url(@economic)
    click_on "Destroy this economic", match: :first

    assert_text "Economic was successfully destroyed"
  end
end
