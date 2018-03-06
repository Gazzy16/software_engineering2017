require 'test_helper'

class Threaddeni09sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @threaddeni09 = threaddeni09s(:one)
  end

  test "should get index" do
    get threaddeni09s_url
    assert_response :success
  end

  test "should get new" do
    get new_threaddeni09_url
    assert_response :success
  end

  test "should create threaddeni09" do
    assert_difference('Threaddeni09.count') do
      post threaddeni09s_url, params: { threaddeni09: { processdeni09_id: @threaddeni09.processdeni09_id } }
    end

    assert_redirected_to threaddeni09_url(Threaddeni09.last)
  end

  test "should show threaddeni09" do
    get threaddeni09_url(@threaddeni09)
    assert_response :success
  end

  test "should get edit" do
    get edit_threaddeni09_url(@threaddeni09)
    assert_response :success
  end

  test "should update threaddeni09" do
    patch threaddeni09_url(@threaddeni09), params: { threaddeni09: { processdeni09_id: @threaddeni09.processdeni09_id } }
    assert_redirected_to threaddeni09_url(@threaddeni09)
  end

  test "should destroy threaddeni09" do
    assert_difference('Threaddeni09.count', -1) do
      delete threaddeni09_url(@threaddeni09)
    end

    assert_redirected_to threaddeni09s_url
  end
end
