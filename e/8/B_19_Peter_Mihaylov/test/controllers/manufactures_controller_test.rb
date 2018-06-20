require 'test_helper'

class ManufacturesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @manufacture = manufactures(:one)
  end

  test "should get index" do
    get manufactures_url
    assert_response :success
  end

  test "should get new" do
    get new_manufacture_url
    assert_response :success
  end

  test "should create manufacture" do
    assert_difference('Manufacture.count') do
      post manufactures_url, params: { manufacture: { location: @manufacture.location, name: @manufacture.name } }
    end

    assert_redirected_to manufacture_url(Manufacture.last)
  end

  test "should show manufacture" do
    get manufacture_url(@manufacture)
    assert_response :success
  end

  test "should get edit" do
    get edit_manufacture_url(@manufacture)
    assert_response :success
  end

  test "should update manufacture" do
    patch manufacture_url(@manufacture), params: { manufacture: { location: @manufacture.location, name: @manufacture.name } }
    assert_redirected_to manufacture_url(@manufacture)
  end

  test "should destroy manufacture" do
    assert_difference('Manufacture.count', -1) do
      delete manufacture_url(@manufacture)
    end

    assert_redirected_to manufactures_url
  end
end
