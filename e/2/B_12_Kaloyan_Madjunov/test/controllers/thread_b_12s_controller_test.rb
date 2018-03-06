require 'test_helper'

class ThreadB12sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @thread_b_12 = thread_b_12s(:one)
  end

  test "should get index" do
    get thread_b_12s_url
    assert_response :success
  end

  test "should get new" do
    get new_thread_b_12_url
    assert_response :success
  end

  test "should create thread_b_12" do
    assert_difference('ThreadB12.count') do
      post thread_b_12s_url, params: { thread_b_12: { value: @thread_b_12.value } }
    end

    assert_redirected_to thread_b_12_url(ThreadB12.last)
  end

  test "should show thread_b_12" do
    get thread_b_12_url(@thread_b_12)
    assert_response :success
  end

  test "should get edit" do
    get edit_thread_b_12_url(@thread_b_12)
    assert_response :success
  end

  test "should update thread_b_12" do
    patch thread_b_12_url(@thread_b_12), params: { thread_b_12: { value: @thread_b_12.value } }
    assert_redirected_to thread_b_12_url(@thread_b_12)
  end

  test "should destroy thread_b_12" do
    assert_difference('ThreadB12.count', -1) do
      delete thread_b_12_url(@thread_b_12)
    end

    assert_redirected_to thread_b_12s_url
  end
end
