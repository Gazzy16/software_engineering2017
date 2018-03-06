require 'test_helper'

class MethodIvsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @method_iv = method_ivs(:one)
  end

  test "should get index" do
    get method_ivs_url
    assert_response :success
  end

  test "should get new" do
    get new_method_iv_url
    assert_response :success
  end

  test "should create method_iv" do
    assert_difference('MethodIv.count') do
      post method_ivs_url, params: { method_iv: { id_id: @method_iv.id_id } }
    end

    assert_redirected_to method_iv_url(MethodIv.last)
  end

  test "should show method_iv" do
    get method_iv_url(@method_iv)
    assert_response :success
  end

  test "should get edit" do
    get edit_method_iv_url(@method_iv)
    assert_response :success
  end

  test "should update method_iv" do
    patch method_iv_url(@method_iv), params: { method_iv: { id_id: @method_iv.id_id } }
    assert_redirected_to method_iv_url(@method_iv)
  end

  test "should destroy method_iv" do
    assert_difference('MethodIv.count', -1) do
      delete method_iv_url(@method_iv)
    end

    assert_redirected_to method_ivs_url
  end
end
