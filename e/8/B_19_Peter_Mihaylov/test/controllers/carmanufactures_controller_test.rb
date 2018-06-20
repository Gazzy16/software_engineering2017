require 'test_helper'

class CarmanufacturesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carmanufacture = carmanufactures(:one)
  end

  test "should get index" do
    get carmanufactures_url
    assert_response :success
  end

  test "should get new" do
    get new_carmanufacture_url
    assert_response :success
  end

  test "should create carmanufacture" do
    assert_difference('Carmanufacture.count') do
      post carmanufactures_url, params: { carmanufacture: {  } }
    end

    assert_redirected_to carmanufacture_url(Carmanufacture.last)
  end

  test "should show carmanufacture" do
    get carmanufacture_url(@carmanufacture)
    assert_response :success
  end

  test "should get edit" do
    get edit_carmanufacture_url(@carmanufacture)
    assert_response :success
  end

  test "should update carmanufacture" do
    patch carmanufacture_url(@carmanufacture), params: { carmanufacture: {  } }
    assert_redirected_to carmanufacture_url(@carmanufacture)
  end

  test "should destroy carmanufacture" do
    assert_difference('Carmanufacture.count', -1) do
      delete carmanufacture_url(@carmanufacture)
    end

    assert_redirected_to carmanufactures_url
  end
end
