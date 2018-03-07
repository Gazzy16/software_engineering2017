require 'test_helper'

class ThreadrsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @threadr = threadrs(:one)
  end

  test "should get index" do
    get threadrs_url
    assert_response :success
  end

  test "should get new" do
    get new_threadr_url
    assert_response :success
  end

  test "should create threadr" do
    assert_difference('Threadr.count') do
      post threadrs_url, params: { threadr: { id: @threadr.id, value: @threadr.value } }
    end

    assert_redirected_to threadr_url(Threadr.last)
  end

  test "should show threadr" do
    get threadr_url(@threadr)
    assert_response :success
  end

  test "should get edit" do
    get edit_threadr_url(@threadr)
    assert_response :success
  end

  test "should update threadr" do
    patch threadr_url(@threadr), params: { threadr: { id: @threadr.id, value: @threadr.value } }
    assert_redirected_to threadr_url(@threadr)
  end

  test "should destroy threadr" do
    assert_difference('Threadr.count', -1) do
      delete threadr_url(@threadr)
    end

    assert_redirected_to threadrs_url
  end
end
