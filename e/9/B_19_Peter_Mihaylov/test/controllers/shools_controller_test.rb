require 'test_helper'

class ShoolsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shool = shools(:one)
  end

  test "should get index" do
    get shools_url
    assert_response :success
  end

  test "should get new" do
    get new_shool_url
    assert_response :success
  end

  test "should create shool" do
    assert_difference('Shool.count') do
      post shools_url, params: { shool: { name: @shool.name, number: @shool.number } }
    end

    assert_redirected_to shool_url(Shool.last)
  end

  test "should show shool" do
    get shool_url(@shool)
    assert_response :success
  end

  test "should get edit" do
    get edit_shool_url(@shool)
    assert_response :success
  end

  test "should update shool" do
    patch shool_url(@shool), params: { shool: { name: @shool.name, number: @shool.number } }
    assert_redirected_to shool_url(@shool)
  end

  test "should destroy shool" do
    assert_difference('Shool.count', -1) do
      delete shool_url(@shool)
    end

    assert_redirected_to shools_url
  end
end
