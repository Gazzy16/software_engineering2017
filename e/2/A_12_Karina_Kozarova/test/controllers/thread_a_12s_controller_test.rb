require 'test_helper'

class ThreadA12sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @thread_a_12 = thread_a_12s(:one)
  end

  test "should get index" do
    get thread_a_12s_url
    assert_response :success
  end

  test "should get new" do
    get new_thread_a_12_url
    assert_response :success
  end

  test "should create thread_a_12" do
    assert_difference('ThreadA12.count') do
      post thread_a_12s_url, params: { thread_a_12: { id_process: @thread_a_12.id_process } }
    end

    assert_redirected_to thread_a_12_url(ThreadA12.last)
  end

  test "should show thread_a_12" do
    get thread_a_12_url(@thread_a_12)
    assert_response :success
  end

  test "should get edit" do
    get edit_thread_a_12_url(@thread_a_12)
    assert_response :success
  end

  test "should update thread_a_12" do
    patch thread_a_12_url(@thread_a_12), params: { thread_a_12: { id_process: @thread_a_12.id_process } }
    assert_redirected_to thread_a_12_url(@thread_a_12)
  end

  test "should destroy thread_a_12" do
    assert_difference('ThreadA12.count', -1) do
      delete thread_a_12_url(@thread_a_12)
    end

    assert_redirected_to thread_a_12s_url
  end
end
