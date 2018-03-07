require 'test_helper'

class TestThreadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @test_thread = test_threads(:one)
  end

  test "should get index" do
    get test_threads_url
    assert_response :success
  end

  test "should get new" do
    get new_test_thread_url
    assert_response :success
  end

  test "should create test_thread" do
    assert_difference('TestThread.count') do
      post test_threads_url, params: { test_thread: { id: @test_thread.id } }
    end

    assert_redirected_to test_thread_url(TestThread.last)
  end

  test "should show test_thread" do
    get test_thread_url(@test_thread)
    assert_response :success
  end

  test "should get edit" do
    get edit_test_thread_url(@test_thread)
    assert_response :success
  end

  test "should update test_thread" do
    patch test_thread_url(@test_thread), params: { test_thread: { id: @test_thread.id } }
    assert_redirected_to test_thread_url(@test_thread)
  end

  test "should destroy test_thread" do
    assert_difference('TestThread.count', -1) do
      delete test_thread_url(@test_thread)
    end

    assert_redirected_to test_threads_url
  end
end
