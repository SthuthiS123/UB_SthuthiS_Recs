require "application_system_test_case"

class EnjoymentsTest < ApplicationSystemTestCase
  setup do
    @enjoyment = enjoyments(:one)
  end

  test "visiting the index" do
    visit enjoyments_url
    assert_selector "h1", text: "Enjoyments"
  end

  test "should create enjoyment" do
    visit enjoyments_url
    click_on "New enjoyment"

    fill_in "Subtitle", with: @enjoyment.Subtitle
    fill_in "Title", with: @enjoyment.Title
    fill_in "Description", with: @enjoyment.description
    click_on "Create Enjoyment"

    assert_text "Enjoyment was successfully created"
    click_on "Back"
  end

  test "should update Enjoyment" do
    visit enjoyment_url(@enjoyment)
    click_on "Edit this enjoyment", match: :first

    fill_in "Subtitle", with: @enjoyment.Subtitle
    fill_in "Title", with: @enjoyment.Title
    fill_in "Description", with: @enjoyment.description
    click_on "Update Enjoyment"

    assert_text "Enjoyment was successfully updated"
    click_on "Back"
  end

  test "should destroy Enjoyment" do
    visit enjoyment_url(@enjoyment)
    click_on "Destroy this enjoyment", match: :first

    assert_text "Enjoyment was successfully destroyed"
  end
end
