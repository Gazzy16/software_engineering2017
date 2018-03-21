require 'test_helper'

class ProductClientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_client = product_clients(:one)
  end

  test "should get index" do
    get product_clients_url
    assert_response :success
  end

  test "should get new" do
    get new_product_client_url
    assert_response :success
  end

  test "should create product_client" do
    assert_difference('ProductClient.count') do
      post product_clients_url, params: { product_client: { client_name: @product_client.client_name, product_name: @product_client.product_name } }
    end

    assert_redirected_to product_client_url(ProductClient.last)
  end

  test "should show product_client" do
    get product_client_url(@product_client)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_client_url(@product_client)
    assert_response :success
  end

  test "should update product_client" do
    patch product_client_url(@product_client), params: { product_client: { client_name: @product_client.client_name, product_name: @product_client.product_name } }
    assert_redirected_to product_client_url(@product_client)
  end

  test "should destroy product_client" do
    assert_difference('ProductClient.count', -1) do
      delete product_client_url(@product_client)
    end

    assert_redirected_to product_clients_url
  end
end
