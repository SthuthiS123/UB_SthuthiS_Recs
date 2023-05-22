require "test_helper"

class EconomicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @economic = economics(:one)
  end

  test "should get index" do
    get economics_url
    assert_response :success
  end

  test "should get new" do
    get new_economic_url
    assert_response :success
  end

  test "should create economic" do
    assert_difference("Economic.count") do
      post economics_url, params: { economic: { Subtitle: @economic.Subtitle, Title: @economic.Title, description: @economic.description } }
    end

    assert_redirected_to economic_url(Economic.last)
  end

  test "should show economic" do
    get economic_url(@economic)
    assert_response :success
  end

  test "should get edit" do
    get edit_economic_url(@economic)
    assert_response :success
  end

  test "should update economic" do
    patch economic_url(@economic), params: { economic: { Subtitle: @economic.Subtitle, Title: @economic.Title, description: @economic.description } }
    assert_redirected_to economic_url(@economic)
  end

  test "should destroy economic" do
    assert_difference("Economic.count", -1) do
      delete economic_url(@economic)
    end

    assert_redirected_to economics_url
  end
end
