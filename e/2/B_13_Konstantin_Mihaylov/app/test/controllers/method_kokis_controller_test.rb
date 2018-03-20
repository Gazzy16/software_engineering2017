require 'test_helper'

class MethodKokisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @method_koki = method_kokis(:one)
  end

  test "should get index" do
    get method_kokis_url
    assert_response :success
  end

  test "should get new" do
    get new_method_koki_url
    assert_response :success
  end

  test "should create method_koki" do
    assert_difference('MethodKoki.count') do
      post method_kokis_url, params: { method_koki: { content: @method_koki.content, name: @method_koki.name, title: @method_koki.title } }
    end

    assert_redirected_to method_koki_url(MethodKoki.last)
  end

  test "should show method_koki" do
    get method_koki_url(@method_koki)
    assert_response :success
  end

  test "should get edit" do
    get edit_method_koki_url(@method_koki)
    assert_response :success
  end

  test "should update method_koki" do
    patch method_koki_url(@method_koki), params: { method_koki: { content: @method_koki.content, name: @method_koki.name, title: @method_koki.title } }
    assert_redirected_to method_koki_url(@method_koki)
  end

  test "should destroy method_koki" do
    assert_difference('MethodKoki.count', -1) do
      delete method_koki_url(@method_koki)
    end

    assert_redirected_to method_kokis_url
  end
end
