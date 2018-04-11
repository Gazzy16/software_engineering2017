require 'test_helper'

class ConnectionSubCustomersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @connection_sub_customer = connection_sub_customers(:one)
  end

  test "should get index" do
    get connection_sub_customers_url
    assert_response :success
  end

  test "should get new" do
    get new_connection_sub_customer_url
    assert_response :success
  end

  test "should create connection_sub_customer" do
    assert_difference('ConnectionSubCustomer.count') do
      post connection_sub_customers_url, params: { connection_sub_customer: {  } }
    end

    assert_redirected_to connection_sub_customer_url(ConnectionSubCustomer.last)
  end

  test "should show connection_sub_customer" do
    get connection_sub_customer_url(@connection_sub_customer)
    assert_response :success
  end

  test "should get edit" do
    get edit_connection_sub_customer_url(@connection_sub_customer)
    assert_response :success
  end

  test "should update connection_sub_customer" do
    patch connection_sub_customer_url(@connection_sub_customer), params: { connection_sub_customer: {  } }
    assert_redirected_to connection_sub_customer_url(@connection_sub_customer)
  end

  test "should destroy connection_sub_customer" do
    assert_difference('ConnectionSubCustomer.count', -1) do
      delete connection_sub_customer_url(@connection_sub_customer)
    end

    assert_redirected_to connection_sub_customers_url
  end
end
