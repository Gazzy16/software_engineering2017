require 'test_helper'

class ConnectionProductClientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @connection_product_client = connection_product_clients(:one)
  end

  test "should get index" do
    get connection_product_clients_url
    assert_response :success
  end

  test "should get new" do
    get new_connection_product_client_url
    assert_response :success
  end

  test "should create connection_product_client" do
    assert_difference('ConnectionProductClient.count') do
      post connection_product_clients_url, params: { connection_product_client: { clinet_id: @connection_product_client.clinet_id, product_id: @connection_product_client.product_id } }
    end

    assert_redirected_to connection_product_client_url(ConnectionProductClient.last)
  end

  test "should show connection_product_client" do
    get connection_product_client_url(@connection_product_client)
    assert_response :success
  end

  test "should get edit" do
    get edit_connection_product_client_url(@connection_product_client)
    assert_response :success
  end

  test "should update connection_product_client" do
    patch connection_product_client_url(@connection_product_client), params: { connection_product_client: { clinet_id: @connection_product_client.clinet_id, product_id: @connection_product_client.product_id } }
    assert_redirected_to connection_product_client_url(@connection_product_client)
  end

  test "should destroy connection_product_client" do
    assert_difference('ConnectionProductClient.count', -1) do
      delete connection_product_client_url(@connection_product_client)
    end

    assert_redirected_to connection_product_clients_url
  end
end
