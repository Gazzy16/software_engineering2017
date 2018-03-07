require 'test_helper'

class ThrsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @thr = thrs(:one)
  end

  test "should get index" do
    get thrs_url
    assert_response :success
  end

  test "should get new" do
    get new_thr_url
    assert_response :success
  end

  test "should create thr" do
    assert_difference('Thr.count') do
      post thrs_url, params: { thr: { thr_id: @thr.thr_id, value: @thr.value } }
    end

    assert_redirected_to thr_url(Thr.last)
  end

  test "should show thr" do
    get thr_url(@thr)
    assert_response :success
  end

  test "should get edit" do
    get edit_thr_url(@thr)
    assert_response :success
  end

  test "should update thr" do
    patch thr_url(@thr), params: { thr: { thr_id: @thr.thr_id, value: @thr.value } }
    assert_redirected_to thr_url(@thr)
  end

  test "should destroy thr" do
    assert_difference('Thr.count', -1) do
      delete thr_url(@thr)
    end

    assert_redirected_to thrs_url
  end
end
