require "test_helper"

class KindsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kind = kinds(:one)
  end

  test "should get index" do
    get kinds_url, as: :json
    assert_response :success
  end

  test "should create kind" do
    assert_difference("Kind.count") do
      post kinds_url, params: { kind: { descripton: @kind.descripton } }, as: :json
    end

    assert_response :created
  end

  test "should show kind" do
    get kind_url(@kind), as: :json
    assert_response :success
  end

  test "should update kind" do
    patch kind_url(@kind), params: { kind: { descripton: @kind.descripton } }, as: :json
    assert_response :success
  end

  test "should destroy kind" do
    assert_difference("Kind.count", -1) do
      delete kind_url(@kind), as: :json
    end

    assert_response :no_content
  end
end
