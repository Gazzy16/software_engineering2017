require 'test_helper'

class ClientsProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @clients_product = clients_products(:one)
  end

  test "should get index" do
    get clients_products_url
    assert_response :success
  end

  test "should get new" do
    get new_clients_product_url
    assert_response :success
  end

  test "should create clients_product" do
    assert_difference('ClientsProduct.count') do
      post clients_products_url, params: { clients_product: { client_id: @clients_product.client_id, product_id: @clients_product.product_id } }
    end

    assert_redirected_to clients_product_url(ClientsProduct.last)
  end

  test "should show clients_product" do
    get clients_product_url(@clients_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_clients_product_url(@clients_product)
    assert_response :success
  end

  test "should update clients_product" do
    patch clients_product_url(@clients_product), params: { clients_product: { client_id: @clients_product.client_id, product_id: @clients_product.product_id } }
    assert_redirected_to clients_product_url(@clients_product)
  end

  test "should destroy clients_product" do
    assert_difference('ClientsProduct.count', -1) do
      delete clients_product_url(@clients_product)
    end

    assert_redirected_to clients_products_url
  end
end
