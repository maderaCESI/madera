require 'test_helper'

class FamilyComponentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get family_components_index_url
    assert_response :success
  end

  test "should get show" do
    get family_components_show_url
    assert_response :success
  end

  test "should get update" do
    get family_components_update_url
    assert_response :success
  end

  test "should get destroy" do
    get family_components_destroy_url
    assert_response :success
  end

  test "should get new" do
    get family_components_new_url
    assert_response :success
  end

  test "should get create" do
    get family_components_create_url
    assert_response :success
  end

  test "should get edit" do
    get family_components_edit_url
    assert_response :success
  end

end
