require 'test_helper'

class CalculationRulesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get calculation_rules_index_url
    assert_response :success
  end

  test "should get show" do
    get calculation_rules_show_url
    assert_response :success
  end

  test "should get update" do
    get calculation_rules_update_url
    assert_response :success
  end

  test "should get destroy" do
    get calculation_rules_destroy_url
    assert_response :success
  end

  test "should get new" do
    get calculation_rules_new_url
    assert_response :success
  end

  test "should get edit" do
    get calculation_rules_edit_url
    assert_response :success
  end

  test "should get create" do
    get calculation_rules_create_url
    assert_response :success
  end

end
