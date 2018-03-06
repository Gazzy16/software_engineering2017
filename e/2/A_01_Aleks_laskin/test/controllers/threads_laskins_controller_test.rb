require 'test_helper'

class ThreadsLaskinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @threads_laskin = threads_laskins(:one)
  end

  test "should get index" do
    get threads_laskins_url
    assert_response :success
  end

  test "should get new" do
    get new_threads_laskin_url
    assert_response :success
  end

  test "should create threads_laskin" do
    assert_difference('ThreadsLaskin.count') do
      post threads_laskins_url, params: { threads_laskin: { processLaskin_id: @threads_laskin.processLaskin_id, process_id: @threads_laskin.process_id } }
    end

    assert_redirected_to threads_laskin_url(ThreadsLaskin.last)
  end

  test "should show threads_laskin" do
    get threads_laskin_url(@threads_laskin)
    assert_response :success
  end

  test "should get edit" do
    get edit_threads_laskin_url(@threads_laskin)
    assert_response :success
  end

  test "should update threads_laskin" do
    patch threads_laskin_url(@threads_laskin), params: { threads_laskin: { processLaskin_id: @threads_laskin.processLaskin_id, process_id: @threads_laskin.process_id } }
    assert_redirected_to threads_laskin_url(@threads_laskin)
  end

  test "should destroy threads_laskin" do
    assert_difference('ThreadsLaskin.count', -1) do
      delete threads_laskin_url(@threads_laskin)
    end

    assert_redirected_to threads_laskins_url
  end
end
