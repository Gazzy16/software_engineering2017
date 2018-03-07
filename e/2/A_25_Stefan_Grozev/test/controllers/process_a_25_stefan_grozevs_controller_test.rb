require 'test_helper'

class ProcessA25StefanGrozevsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @process_a_25_stefan_grozev = process_a_25_stefan_grozevs(:one)
  end

  test "should get index" do
    get process_a_25_stefan_grozevs_url
    assert_response :success
  end

  test "should get new" do
    get new_process_a_25_stefan_grozev_url
    assert_response :success
  end

  test "should create process_a_25_stefan_grozev" do
    assert_difference('ProcessA25StefanGrozev.count') do
      post process_a_25_stefan_grozevs_url, params: { process_a_25_stefan_grozev: { id: @process_a_25_stefan_grozev.id, name: @process_a_25_stefan_grozev.name } }
    end

    assert_redirected_to process_a_25_stefan_grozev_url(ProcessA25StefanGrozev.last)
  end

  test "should show process_a_25_stefan_grozev" do
    get process_a_25_stefan_grozev_url(@process_a_25_stefan_grozev)
    assert_response :success
  end

  test "should get edit" do
    get edit_process_a_25_stefan_grozev_url(@process_a_25_stefan_grozev)
    assert_response :success
  end

  test "should update process_a_25_stefan_grozev" do
    patch process_a_25_stefan_grozev_url(@process_a_25_stefan_grozev), params: { process_a_25_stefan_grozev: { id: @process_a_25_stefan_grozev.id, name: @process_a_25_stefan_grozev.name } }
    assert_redirected_to process_a_25_stefan_grozev_url(@process_a_25_stefan_grozev)
  end

  test "should destroy process_a_25_stefan_grozev" do
    assert_difference('ProcessA25StefanGrozev.count', -1) do
      delete process_a_25_stefan_grozev_url(@process_a_25_stefan_grozev)
    end

    assert_redirected_to process_a_25_stefan_grozevs_url
  end
end
