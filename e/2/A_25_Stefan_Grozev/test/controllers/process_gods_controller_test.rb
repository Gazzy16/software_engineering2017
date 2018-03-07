require 'test_helper'

class ProcessGodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @process_god = process_gods(:one)
  end

  test "should get index" do
    get process_gods_url
    assert_response :success
  end

  test "should get new" do
    get new_process_god_url
    assert_response :success
  end

  test "should create process_god" do
    assert_difference('ProcessGod.count') do
      post process_gods_url, params: { process_god: { id: @process_god.id, name: @process_god.name } }
    end

    assert_redirected_to process_god_url(ProcessGod.last)
  end

  test "should show process_god" do
    get process_god_url(@process_god)
    assert_response :success
  end

  test "should get edit" do
    get edit_process_god_url(@process_god)
    assert_response :success
  end

  test "should update process_god" do
    patch process_god_url(@process_god), params: { process_god: { id: @process_god.id, name: @process_god.name } }
    assert_redirected_to process_god_url(@process_god)
  end

  test "should destroy process_god" do
    assert_difference('ProcessGod.count', -1) do
      delete process_god_url(@process_god)
    end

    assert_redirected_to process_gods_url
  end
end
