require 'test_helper'

class ProcessA12sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @process_a_12 = process_a_12s(:one)
  end

  test "should get index" do
    get process_a_12s_url
    assert_response :success
  end

  test "should get new" do
    get new_process_a_12_url
    assert_response :success
  end

  test "should create process_a_12" do
    assert_difference('ProcessA12.count') do
      post process_a_12s_url, params: { process_a_12: { id: @process_a_12.id, name: @process_a_12.name } }
    end

    assert_redirected_to process_a_12_url(ProcessA12.last)
  end

  test "should show process_a_12" do
    get process_a_12_url(@process_a_12)
    assert_response :success
  end

  test "should get edit" do
    get edit_process_a_12_url(@process_a_12)
    assert_response :success
  end

  test "should update process_a_12" do
    patch process_a_12_url(@process_a_12), params: { process_a_12: { id: @process_a_12.id, name: @process_a_12.name } }
    assert_redirected_to process_a_12_url(@process_a_12)
  end

  test "should destroy process_a_12" do
    assert_difference('ProcessA12.count', -1) do
      delete process_a_12_url(@process_a_12)
    end

    assert_redirected_to process_a_12s_url
  end
end
