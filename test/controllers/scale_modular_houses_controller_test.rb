require 'test_helper'

class ScaleModularHousesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get scale_modular_houses_index_url
    assert_response :success
  end

  test "should get show" do
    get scale_modular_houses_show_url
    assert_response :success
  end

  test "should get update" do
    get scale_modular_houses_update_url
    assert_response :success
  end

  test "should get destroy" do
    get scale_modular_houses_destroy_url
    assert_response :success
  end

  test "should get new" do
    get scale_modular_houses_new_url
    assert_response :success
  end

  test "should get edit" do
    get scale_modular_houses_edit_url
    assert_response :success
  end

  test "should get create" do
    get scale_modular_houses_create_url
    assert_response :success
  end

end
