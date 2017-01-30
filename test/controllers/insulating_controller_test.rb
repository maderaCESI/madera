require 'test_helper'

class InsulatingControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get insulating_index_url
    assert_response :success
  end

  test "should get show" do
    get insulating_show_url
    assert_response :success
  end

  test "should get update" do
    get insulating_update_url
    assert_response :success
  end

  test "should get destroy" do
    get insulating_destroy_url
    assert_response :success
  end

  test "should get new" do
    get insulating_new_url
    assert_response :success
  end

  test "should get edit" do
    get insulating_edit_url
    assert_response :success
  end

  test "should get create" do
    get insulating_create_url
    assert_response :success
  end

end
