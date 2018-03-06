require 'test_helper'

class Method1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @method_1 = method_1s(:one)
  end

  test "should get index" do
    get method_1s_url
    assert_response :success
  end

  test "should get new" do
    get new_method_1_url
    assert_response :success
  end

  test "should create method_1" do
    assert_difference('Method1.count') do
      post method_1s_url, params: { method_1: { program_id: @method_1.program_id } }
    end

    assert_redirected_to method_1_url(Method1.last)
  end

  test "should show method_1" do
    get method_1_url(@method_1)
    assert_response :success
  end

  test "should get edit" do
    get edit_method_1_url(@method_1)
    assert_response :success
  end

  test "should update method_1" do
    patch method_1_url(@method_1), params: { method_1: { program_id: @method_1.program_id } }
    assert_redirected_to method_1_url(@method_1)
  end

  test "should destroy method_1" do
    assert_difference('Method1.count', -1) do
      delete method_1_url(@method_1)
    end

    assert_redirected_to method_1s_url
  end
end
