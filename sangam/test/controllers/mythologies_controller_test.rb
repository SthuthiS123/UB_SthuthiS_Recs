require "test_helper"

class MythologiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mythology = mythologies(:one)
  end

  test "should get index" do
    get mythologies_url
    assert_response :success
  end

  test "should get new" do
    get new_mythology_url
    assert_response :success
  end

  test "should create mythology" do
    assert_difference("Mythology.count") do
      post mythologies_url, params: { mythology: { Subtitle: @mythology.Subtitle, Title: @mythology.Title, description: @mythology.description } }
    end

    assert_redirected_to mythology_url(Mythology.last)
  end

  test "should show mythology" do
    get mythology_url(@mythology)
    assert_response :success
  end

  test "should get edit" do
    get edit_mythology_url(@mythology)
    assert_response :success
  end

  test "should update mythology" do
    patch mythology_url(@mythology), params: { mythology: { Subtitle: @mythology.Subtitle, Title: @mythology.Title, description: @mythology.description } }
    assert_redirected_to mythology_url(@mythology)
  end

  test "should destroy mythology" do
    assert_difference("Mythology.count", -1) do
      delete mythology_url(@mythology)
    end

    assert_redirected_to mythologies_url
  end
end
