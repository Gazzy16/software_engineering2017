require 'test_helper'

class ProcessA06sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @process_a06 = process_a06s(:one)
  end

  test "should get index" do
    get process_a06s_url
    assert_response :success
  end

  test "should get new" do
    get new_process_a06_url
    assert_response :success
  end

  test "should create process_a06" do
    assert_difference('ProcessA06.count') do
      post process_a06s_url, params: { process_a06: { name: @process_a06.name } }
    end

    assert_redirected_to process_a06_url(ProcessA06.last)
  end

  test "should show process_a06" do
    get process_a06_url(@process_a06)
    assert_response :success
  end

  test "should get edit" do
    get edit_process_a06_url(@process_a06)
    assert_response :success
  end

  test "should update process_a06" do
    patch process_a06_url(@process_a06), params: { process_a06: { name: @process_a06.name } }
    assert_redirected_to process_a06_url(@process_a06)
  end

  test "should destroy process_a06" do
    assert_difference('ProcessA06.count', -1) do
      delete process_a06_url(@process_a06)
    end

    assert_redirected_to process_a06s_url
  end
end
