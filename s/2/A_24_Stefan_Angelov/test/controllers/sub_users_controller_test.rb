require 'test_helper'

class SubUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sub_user = sub_users(:one)
  end

  test "should get index" do
    get sub_users_url
    assert_response :success
  end

  test "should get new" do
    get new_sub_user_url
    assert_response :success
  end

  test "should create sub_user" do
    assert_difference('SubUser.count') do
      post sub_users_url, params: { sub_user: { role: @sub_user.role, sub_id: @sub_user.sub_id, user_id: @sub_user.user_id } }
    end

    assert_redirected_to sub_user_url(SubUser.last)
  end

  test "should show sub_user" do
    get sub_user_url(@sub_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_sub_user_url(@sub_user)
    assert_response :success
  end

  test "should update sub_user" do
    patch sub_user_url(@sub_user), params: { sub_user: { role: @sub_user.role, sub_id: @sub_user.sub_id, user_id: @sub_user.user_id } }
    assert_redirected_to sub_user_url(@sub_user)
  end

  test "should destroy sub_user" do
    assert_difference('SubUser.count', -1) do
      delete sub_user_url(@sub_user)
    end

    assert_redirected_to sub_users_url
  end
end
