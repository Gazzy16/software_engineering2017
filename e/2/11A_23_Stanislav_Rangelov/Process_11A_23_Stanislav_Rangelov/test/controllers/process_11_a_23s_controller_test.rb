require 'test_helper'

class Process11A23sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @process_11_a_23 = process_11_a_23s(:one)
  end

  test "should get index" do
    get process_11_a_23s_url
    assert_response :success
  end

  test "should get new" do
    get new_process_11_a_23_url
    assert_response :success
  end

  test "should create process_11_a_23" do
    assert_difference('Process11A23.count') do
      post process_11_a_23s_url, params: { process_11_a_23: { id: @process_11_a_23.id, name: @process_11_a_23.name } }
    end

    assert_redirected_to process_11_a_23_url(Process11A23.last)
  end

  test "should show process_11_a_23" do
    get process_11_a_23_url(@process_11_a_23)
    assert_response :success
  end

  test "should get edit" do
    get edit_process_11_a_23_url(@process_11_a_23)
    assert_response :success
  end

  test "should update process_11_a_23" do
    patch process_11_a_23_url(@process_11_a_23), params: { process_11_a_23: { id: @process_11_a_23.id, name: @process_11_a_23.name } }
    assert_redirected_to process_11_a_23_url(@process_11_a_23)
  end

  test "should destroy process_11_a_23" do
    assert_difference('Process11A23.count', -1) do
      delete process_11_a_23_url(@process_11_a_23)
    end

    assert_redirected_to process_11_a_23s_url
  end
end
