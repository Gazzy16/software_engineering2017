require 'test_helper'

class CarManufacturesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @car_manufacture = car_manufactures(:one)
  end

  test "should get index" do
    get car_manufactures_url
    assert_response :success
  end

  test "should get new" do
    get new_car_manufacture_url
    assert_response :success
  end

  test "should create car_manufacture" do
    assert_difference('CarManufacture.count') do
      post car_manufactures_url, params: { car_manufacture: { car_id: @car_manufacture.car_id, manufacture_id: @car_manufacture.manufacture_id } }
    end

    assert_redirected_to car_manufacture_url(CarManufacture.last)
  end

  test "should show car_manufacture" do
    get car_manufacture_url(@car_manufacture)
    assert_response :success
  end

  test "should get edit" do
    get edit_car_manufacture_url(@car_manufacture)
    assert_response :success
  end

  test "should update car_manufacture" do
    patch car_manufacture_url(@car_manufacture), params: { car_manufacture: { car_id: @car_manufacture.car_id, manufacture_id: @car_manufacture.manufacture_id } }
    assert_redirected_to car_manufacture_url(@car_manufacture)
  end

  test "should destroy car_manufacture" do
    assert_difference('CarManufacture.count', -1) do
      delete car_manufacture_url(@car_manufacture)
    end

    assert_redirected_to car_manufactures_url
  end
end
