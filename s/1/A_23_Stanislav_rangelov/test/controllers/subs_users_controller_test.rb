require 'test_helper'

class SubsUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subs_user = subs_users(:one)
  end

  test "should get index" do
    get subs_users_url
    assert_response :success
  end

  test "should get new" do
    get new_subs_user_url
    assert_response :success
  end

  test "should create subs_user" do
    assert_difference('SubsUser.count') do
      post subs_users_url, params: { subs_user: { iserid: @subs_user.iserid, subscriptionid: @subs_user.subscriptionid, type: @subs_user.type } }
    end

    assert_redirected_to subs_user_url(SubsUser.last)
  end

  test "should show subs_user" do
    get subs_user_url(@subs_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_subs_user_url(@subs_user)
    assert_response :success
  end

  test "should update subs_user" do
    patch subs_user_url(@subs_user), params: { subs_user: { iserid: @subs_user.iserid, subscriptionid: @subs_user.subscriptionid, type: @subs_user.type } }
    assert_redirected_to subs_user_url(@subs_user)
  end

  test "should destroy subs_user" do
    assert_difference('SubsUser.count', -1) do
      delete subs_user_url(@subs_user)
    end

    assert_redirected_to subs_users_url
  end
end
