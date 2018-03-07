require 'test_helper'

class ThreadDragsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @thread_drag = thread_drags(:one)
  end

  test "should get index" do
    get thread_drags_url
    assert_response :success
  end

  test "should get new" do
    get new_thread_drag_url
    assert_response :success
  end

  test "should create thread_drag" do
    assert_difference('ThreadDrag.count') do
      post thread_drags_url, params: { thread_drag: { t_id: @thread_drag.t_id, value: @thread_drag.value } }
    end

    assert_redirected_to thread_drag_url(ThreadDrag.last)
  end

  test "should show thread_drag" do
    get thread_drag_url(@thread_drag)
    assert_response :success
  end

  test "should get edit" do
    get edit_thread_drag_url(@thread_drag)
    assert_response :success
  end

  test "should update thread_drag" do
    patch thread_drag_url(@thread_drag), params: { thread_drag: { t_id: @thread_drag.t_id, value: @thread_drag.value } }
    assert_redirected_to thread_drag_url(@thread_drag)
  end

  test "should destroy thread_drag" do
    assert_difference('ThreadDrag.count', -1) do
      delete thread_drag_url(@thread_drag)
    end

    assert_redirected_to thread_drags_url
  end
end
