require 'test_helper'

class ThreadA22RadoslavHubenovsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @thread_a22_radoslav_hubenov = thread_a22_radoslav_hubenovs(:one)
  end

  test "should get index" do
    get thread_a22_radoslav_hubenovs_url
    assert_response :success
  end

  test "should get new" do
    get new_thread_a22_radoslav_hubenov_url
    assert_response :success
  end

  test "should create thread_a22_radoslav_hubenov" do
    assert_difference('ThreadA22RadoslavHubenov.count') do
      post thread_a22_radoslav_hubenovs_url, params: { thread_a22_radoslav_hubenov: {  } }
    end

    assert_redirected_to thread_a22_radoslav_hubenov_url(ThreadA22RadoslavHubenov.last)
  end

  test "should show thread_a22_radoslav_hubenov" do
    get thread_a22_radoslav_hubenov_url(@thread_a22_radoslav_hubenov)
    assert_response :success
  end

  test "should get edit" do
    get edit_thread_a22_radoslav_hubenov_url(@thread_a22_radoslav_hubenov)
    assert_response :success
  end

  test "should update thread_a22_radoslav_hubenov" do
    patch thread_a22_radoslav_hubenov_url(@thread_a22_radoslav_hubenov), params: { thread_a22_radoslav_hubenov: {  } }
    assert_redirected_to thread_a22_radoslav_hubenov_url(@thread_a22_radoslav_hubenov)
  end

  test "should destroy thread_a22_radoslav_hubenov" do
    assert_difference('ThreadA22RadoslavHubenov.count', -1) do
      delete thread_a22_radoslav_hubenov_url(@thread_a22_radoslav_hubenov)
    end

    assert_redirected_to thread_a22_radoslav_hubenovs_url
  end
end
