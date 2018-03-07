require 'test_helper'

class ThreaddsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @threadd = threadds(:one)
  end

  test "should get index" do
    get threadds_url
    assert_response :success
  end

  test "should get new" do
    get new_threadd_url
    assert_response :success
  end

  test "should create threadd" do
    assert_difference('Threadd.count') do
      post threadds_url, params: { threadd: { classname: @threadd.classname, value: @threadd.value } }
    end

    assert_redirected_to threadd_url(Threadd.last)
  end

  test "should show threadd" do
    get threadd_url(@threadd)
    assert_response :success
  end

  test "should get edit" do
    get edit_threadd_url(@threadd)
    assert_response :success
  end

  test "should update threadd" do
    patch threadd_url(@threadd), params: { threadd: { classname: @threadd.classname, value: @threadd.value } }
    assert_redirected_to threadd_url(@threadd)
  end

  test "should destroy threadd" do
    assert_difference('Threadd.count', -1) do
      delete threadd_url(@threadd)
    end

    assert_redirected_to threadds_url
  end
end
