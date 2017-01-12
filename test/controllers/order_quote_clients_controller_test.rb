require 'test_helper'

class OrderQuoteClientsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get order_quote_clients_index_url
    assert_response :success
  end

  test "should get show" do
    get order_quote_clients_show_url
    assert_response :success
  end

  test "should get update" do
    get order_quote_clients_update_url
    assert_response :success
  end

  test "should get destroy" do
    get order_quote_clients_destroy_url
    assert_response :success
  end

  test "should get new" do
    get order_quote_clients_new_url
    assert_response :success
  end

  test "should get edit" do
    get order_quote_clients_edit_url
    assert_response :success
  end

  test "should get create" do
    get order_quote_clients_create_url
    assert_response :success
  end

end
