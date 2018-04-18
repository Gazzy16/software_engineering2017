require 'test_helper'

class UserSubsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_sub = user_subs(:one)
  end

  test "should get index" do
    get user_subs_url
    assert_response :success
  end

  test "should get new" do
    get new_user_sub_url
    assert_response :success
  end

  test "should create user_sub" do
    assert_difference('UserSub.count') do
      post user_subs_url, params: { user_sub: { role: @user_sub.role, sub_id: @user_sub.sub_id, user_id: @user_sub.user_id } }
    end

    assert_redirected_to user_sub_url(UserSub.last)
  end

  test "should show user_sub" do
    get user_sub_url(@user_sub)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_sub_url(@user_sub)
    assert_response :success
  end

  test "should update user_sub" do
    patch user_sub_url(@user_sub), params: { user_sub: { role: @user_sub.role, sub_id: @user_sub.sub_id, user_id: @user_sub.user_id } }
    assert_redirected_to user_sub_url(@user_sub)
  end

  test "should destroy user_sub" do
    assert_difference('UserSub.count', -1) do
      delete user_sub_url(@user_sub)
    end

    assert_redirected_to user_subs_url
  end
end
