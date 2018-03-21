require 'test_helper'

class ProductClientConnectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_client_connection = product_client_connections(:one)
  end

  test "should get index" do
    get product_client_connections_url
    assert_response :success
  end

  test "should get new" do
    get new_product_client_connection_url
    assert_response :success
  end

  test "should create product_client_connection" do
    assert_difference('ProductClientConnection.count') do
      post product_client_connections_url, params: { product_client_connection: { client_id: @product_client_connection.client_id, product_id: @product_client_connection.product_id } }
    end

    assert_redirected_to product_client_connection_url(ProductClientConnection.last)
  end

  test "should show product_client_connection" do
    get product_client_connection_url(@product_client_connection)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_client_connection_url(@product_client_connection)
    assert_response :success
  end

  test "should update product_client_connection" do
    patch product_client_connection_url(@product_client_connection), params: { product_client_connection: { client_id: @product_client_connection.client_id, product_id: @product_client_connection.product_id } }
    assert_redirected_to product_client_connection_url(@product_client_connection)
  end

  test "should destroy product_client_connection" do
    assert_difference('ProductClientConnection.count', -1) do
      delete product_client_connection_url(@product_client_connection)
    end

    assert_redirected_to product_client_connections_url
  end
end
