require 'test_helper'

class CctpControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cctp_index_url
    assert_response :success
  end

  test "should get show" do
    get cctp_show_url
    assert_response :success
  end

  test "should get update" do
    get cctp_update_url
    assert_response :success
  end

  test "should get destroy" do
    get cctp_destroy_url
    assert_response :success
  end

  test "should get new" do
    get cctp_new_url
    assert_response :success
  end

  test "should get edit" do
    get cctp_edit_url
    assert_response :success
  end

  test "should get create" do
    get cctp_create_url
    assert_response :success
  end

end
