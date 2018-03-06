require 'test_helper'

class ProcessA22RadoslavHubenovsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @process_a22_radoslav_hubenov = process_a22_radoslav_hubenovs(:one)
  end

  test "should get index" do
    get process_a22_radoslav_hubenovs_url
    assert_response :success
  end

  test "should get new" do
    get new_process_a22_radoslav_hubenov_url
    assert_response :success
  end

  test "should create process_a22_radoslav_hubenov" do
    assert_difference('ProcessA22RadoslavHubenov.count') do
      post process_a22_radoslav_hubenovs_url, params: { process_a22_radoslav_hubenov: { name: @process_a22_radoslav_hubenov.name } }
    end

    assert_redirected_to process_a22_radoslav_hubenov_url(ProcessA22RadoslavHubenov.last)
  end

  test "should show process_a22_radoslav_hubenov" do
    get process_a22_radoslav_hubenov_url(@process_a22_radoslav_hubenov)
    assert_response :success
  end

  test "should get edit" do
    get edit_process_a22_radoslav_hubenov_url(@process_a22_radoslav_hubenov)
    assert_response :success
  end

  test "should update process_a22_radoslav_hubenov" do
    patch process_a22_radoslav_hubenov_url(@process_a22_radoslav_hubenov), params: { process_a22_radoslav_hubenov: { name: @process_a22_radoslav_hubenov.name } }
    assert_redirected_to process_a22_radoslav_hubenov_url(@process_a22_radoslav_hubenov)
  end

  test "should destroy process_a22_radoslav_hubenov" do
    assert_difference('ProcessA22RadoslavHubenov.count', -1) do
      delete process_a22_radoslav_hubenov_url(@process_a22_radoslav_hubenov)
    end

    assert_redirected_to process_a22_radoslav_hubenovs_url
  end
end
