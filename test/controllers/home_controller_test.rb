require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get home_index_url
    assert_response :success
  end

  test "should get writing" do
    get home_writing_url
    assert_response :success
  end

  test "should get reading" do
    get home_reading_url
    assert_response :success
  end

  test "should get querying" do
    get home_querying_url
    assert_response :success
  end

  test "should get using" do
    get home_using_url
    assert_response :success
  end

end
