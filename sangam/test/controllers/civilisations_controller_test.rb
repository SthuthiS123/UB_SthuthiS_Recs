require "test_helper"

class CivilisationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @civilisation = civilisations(:one)
  end

  test "should get index" do
    get civilisations_url
    assert_response :success
  end

  test "should get new" do
    get new_civilisation_url
    assert_response :success
  end

  test "should create civilisation" do
    assert_difference("Civilisation.count") do
      post civilisations_url, params: { civilisation: { Subtitle: @civilisation.Subtitle, Title: @civilisation.Title, description: @civilisation.description } }
    end

    assert_redirected_to civilisation_url(Civilisation.last)
  end

  test "should show civilisation" do
    get civilisation_url(@civilisation)
    assert_response :success
  end

  test "should get edit" do
    get edit_civilisation_url(@civilisation)
    assert_response :success
  end

  test "should update civilisation" do
    patch civilisation_url(@civilisation), params: { civilisation: { Subtitle: @civilisation.Subtitle, Title: @civilisation.Title, description: @civilisation.description } }
    assert_redirected_to civilisation_url(@civilisation)
  end

  test "should destroy civilisation" do
    assert_difference("Civilisation.count", -1) do
      delete civilisation_url(@civilisation)
    end

    assert_redirected_to civilisations_url
  end
end
