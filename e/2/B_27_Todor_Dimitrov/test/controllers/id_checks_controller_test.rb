require 'test_helper'

class IdChecksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @id_check = id_checks(:one)
  end

  test "should get index" do
    get id_checks_url
    assert_response :success
  end

  test "should get new" do
    get new_id_check_url
    assert_response :success
  end

  test "should create id_check" do
    assert_difference('IdCheck.count') do
      post id_checks_url, params: { id_check: { Test_Thread_id: @id_check.Test_Thread_id } }
    end

    assert_redirected_to id_check_url(IdCheck.last)
  end

  test "should show id_check" do
    get id_check_url(@id_check)
    assert_response :success
  end

  test "should get edit" do
    get edit_id_check_url(@id_check)
    assert_response :success
  end

  test "should update id_check" do
    patch id_check_url(@id_check), params: { id_check: { Test_Thread_id: @id_check.Test_Thread_id } }
    assert_redirected_to id_check_url(@id_check)
  end

  test "should destroy id_check" do
    assert_difference('IdCheck.count', -1) do
      delete id_check_url(@id_check)
    end

    assert_redirected_to id_checks_url
  end
end
