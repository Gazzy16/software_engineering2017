require 'test_helper'

class ThreadA06sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @thread_a06 = thread_a06s(:one)
  end

  test "should get index" do
    get thread_a06s_url
    assert_response :success
  end

  test "should get new" do
    get new_thread_a06_url
    assert_response :success
  end

  test "should create thread_a06" do
    assert_difference('ThreadA06.count') do
      post thread_a06s_url, params: { thread_a06: { processA06_id: @thread_a06.processA06_id } }
    end

    assert_redirected_to thread_a06_url(ThreadA06.last)
  end

  test "should show thread_a06" do
    get thread_a06_url(@thread_a06)
    assert_response :success
  end

  test "should get edit" do
    get edit_thread_a06_url(@thread_a06)
    assert_response :success
  end

  test "should update thread_a06" do
    patch thread_a06_url(@thread_a06), params: { thread_a06: { processA06_id: @thread_a06.processA06_id } }
    assert_redirected_to thread_a06_url(@thread_a06)
  end

  test "should destroy thread_a06" do
    assert_difference('ThreadA06.count', -1) do
      delete thread_a06_url(@thread_a06)
    end

    assert_redirected_to thread_a06s_url
  end
end
