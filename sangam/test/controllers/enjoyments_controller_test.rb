require "test_helper"

class EnjoymentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @enjoyment = enjoyments(:one)
  end

  test "should get index" do
    get enjoyments_url
    assert_response :success
  end

  test "should get new" do
    get new_enjoyment_url
    assert_response :success
  end

  test "should create enjoyment" do
    assert_difference("Enjoyment.count") do
      post enjoyments_url, params: { enjoyment: { Subtitle: @enjoyment.Subtitle, Title: @enjoyment.Title, description: @enjoyment.description } }
    end

    assert_redirected_to enjoyment_url(Enjoyment.last)
  end

  test "should show enjoyment" do
    get enjoyment_url(@enjoyment)
    assert_response :success
  end

  test "should get edit" do
    get edit_enjoyment_url(@enjoyment)
    assert_response :success
  end

  test "should update enjoyment" do
    patch enjoyment_url(@enjoyment), params: { enjoyment: { Subtitle: @enjoyment.Subtitle, Title: @enjoyment.Title, description: @enjoyment.description } }
    assert_redirected_to enjoyment_url(@enjoyment)
  end

  test "should destroy enjoyment" do
    assert_difference("Enjoyment.count", -1) do
      delete enjoyment_url(@enjoyment)
    end

    assert_redirected_to enjoyments_url
  end
end
