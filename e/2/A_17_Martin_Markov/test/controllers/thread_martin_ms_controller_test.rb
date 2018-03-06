require 'test_helper'

class ThreadMartinMsControllerTest < ActionController::TestCase
  setup do
    @process_martin_m = process_martin_ms(:one)
    @thread_martin_m = thread_martin_ms(:one)
  end

  test "should get index" do
    get :index, params: { process_martin_m_id: @process_martin_m }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { process_martin_m_id: @process_martin_m }
    assert_response :success
  end

  test "should create thread_martin_m" do
    assert_difference('ThreadMartinM.count') do
      post :create, params: { process_martin_m_id: @process_martin_m, thread_martin_m: @thread_martin_m.attributes }
    end

    assert_redirected_to process_martin_m_thread_martin_m_path(@process_martin_m, ThreadMartinM.last)
  end

  test "should show thread_martin_m" do
    get :show, params: { process_martin_m_id: @process_martin_m, id: @thread_martin_m }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { process_martin_m_id: @process_martin_m, id: @thread_martin_m }
    assert_response :success
  end

  test "should update thread_martin_m" do
    put :update, params: { process_martin_m_id: @process_martin_m, id: @thread_martin_m, thread_martin_m: @thread_martin_m.attributes }
    assert_redirected_to process_martin_m_thread_martin_m_path(@process_martin_m, ThreadMartinM.last)
  end

  test "should destroy thread_martin_m" do
    assert_difference('ThreadMartinM.count', -1) do
      delete :destroy, params: { process_martin_m_id: @process_martin_m, id: @thread_martin_m }
    end

    assert_redirected_to process_martin_m_thread_martin_ms_path(@process_martin_m)
  end
end
