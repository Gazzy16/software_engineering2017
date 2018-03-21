require 'test_helper'

class ClientProductConnectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @client_product_connection = client_product_connections(:one)
  end

  test "should get index" do
    get client_product_connections_url
    assert_response :success
  end

  test "should get new" do
    get new_client_product_connection_url
    assert_response :success
  end

  test "should create client_product_connection" do
    assert_difference('ClientProductConnection.count') do
      post client_product_connections_url, params: { client_product_connection: { client_id: @client_product_connection.client_id, product_id: @client_product_connection.product_id } }
    end

    assert_redirected_to client_product_connection_url(ClientProductConnection.last)
  end

  test "should show client_product_connection" do
    get client_product_connection_url(@client_product_connection)
    assert_response :success
  end

  test "should get edit" do
    get edit_client_product_connection_url(@client_product_connection)
    assert_response :success
  end

  test "should update client_product_connection" do
    patch client_product_connection_url(@client_product_connection), params: { client_product_connection: { client_id: @client_product_connection.client_id, product_id: @client_product_connection.product_id } }
    assert_redirected_to client_product_connection_url(@client_product_connection)
  end

  test "should destroy client_product_connection" do
    assert_difference('ClientProductConnection.count', -1) do
      delete client_product_connection_url(@client_product_connection)
    end

    assert_redirected_to client_product_connections_url
  end
end
