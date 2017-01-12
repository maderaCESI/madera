require 'test_helper'

class ModulusControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get modulus_index_url
    assert_response :success
  end

  test "should get show" do
    get modulus_show_url
    assert_response :success
  end

  test "should get update" do
    get modulus_update_url
    assert_response :success
  end

  test "should get destroy" do
    get modulus_destroy_url
    assert_response :success
  end

  test "should get new" do
    get modulus_new_url
    assert_response :success
  end

  test "should get edit" do
    get modulus_edit_url
    assert_response :success
  end

  test "should get create" do
    get modulus_create_url
    assert_response :success
  end

end
