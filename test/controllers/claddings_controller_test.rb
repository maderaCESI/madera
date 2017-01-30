require 'test_helper'

class CladdingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get claddings_index_url
    assert_response :success
  end

  test "should get show" do
    get claddings_show_url
    assert_response :success
  end

  test "should get update" do
    get claddings_update_url
    assert_response :success
  end

  test "should get destroy" do
    get claddings_destroy_url
    assert_response :success
  end

  test "should get new" do
    get claddings_new_url
    assert_response :success
  end

  test "should get edit" do
    get claddings_edit_url
    assert_response :success
  end

  test "should get create" do
    get claddings_create_url
    assert_response :success
  end

end
