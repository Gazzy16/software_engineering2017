require 'test_helper'

class ProcessLaskinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @process_laskin = process_laskins(:one)
  end

  test "should get index" do
    get process_laskins_url
    assert_response :success
  end

  test "should get new" do
    get new_process_laskin_url
    assert_response :success
  end

  test "should create process_laskin" do
    assert_difference('ProcessLaskin.count') do
      post process_laskins_url, params: { process_laskin: { name: @process_laskin.name, process_id: @process_laskin.process_id } }
    end

    assert_redirected_to process_laskin_url(ProcessLaskin.last)
  end

  test "should show process_laskin" do
    get process_laskin_url(@process_laskin)
    assert_response :success
  end

  test "should get edit" do
    get edit_process_laskin_url(@process_laskin)
    assert_response :success
  end

  test "should update process_laskin" do
    patch process_laskin_url(@process_laskin), params: { process_laskin: { name: @process_laskin.name, process_id: @process_laskin.process_id } }
    assert_redirected_to process_laskin_url(@process_laskin)
  end

  test "should destroy process_laskin" do
    assert_difference('ProcessLaskin.count', -1) do
      delete process_laskin_url(@process_laskin)
    end

    assert_redirected_to process_laskins_url
  end
end
