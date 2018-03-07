require 'test_helper'

class ProcessMartinMsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @process_martin_m = process_martin_ms(:one)
  end

  test "should get index" do
    get process_martin_ms_url
    assert_response :success
  end

  test "should get new" do
    get new_process_martin_m_url
    assert_response :success
  end

  test "should create process_martin_m" do
    assert_difference('ProcessMartinM.count') do
      post process_martin_ms_url, params: { process_martin_m: { name: @process_martin_m.name } }
    end

    assert_redirected_to process_martin_m_url(ProcessMartinM.last)
  end

  test "should show process_martin_m" do
    get process_martin_m_url(@process_martin_m)
    assert_response :success
  end

  test "should get edit" do
    get edit_process_martin_m_url(@process_martin_m)
    assert_response :success
  end

  test "should update process_martin_m" do
    patch process_martin_m_url(@process_martin_m), params: { process_martin_m: { name: @process_martin_m.name } }
    assert_redirected_to process_martin_m_url(@process_martin_m)
  end

  test "should destroy process_martin_m" do
    assert_difference('ProcessMartinM.count', -1) do
      delete process_martin_m_url(@process_martin_m)
    end

    assert_redirected_to process_martin_ms_url
  end
end
