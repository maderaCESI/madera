require 'test_helper'

class UniteUsesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get unite_uses_index_url
    assert_response :success
  end

  test "should get show" do
    get unite_uses_show_url
    assert_response :success
  end

  test "should get update" do
    get unite_uses_update_url
    assert_response :success
  end

  test "should get destroy" do
    get unite_uses_destroy_url
    assert_response :success
  end

  test "should get new" do
    get unite_uses_new_url
    assert_response :success
  end

  test "should get edit" do
    get unite_uses_edit_url
    assert_response :success
  end

  test "should get create" do
    get unite_uses_create_url
    assert_response :success
  end

end
