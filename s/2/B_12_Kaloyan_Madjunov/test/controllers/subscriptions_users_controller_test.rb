require 'test_helper'

class SubscriptionsUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subscriptions_user = subscriptions_users(:one)
  end

  test "should get index" do
    get subscriptions_users_url
    assert_response :success
  end

  test "should get new" do
    get new_subscriptions_user_url
    assert_response :success
  end

  test "should create subscriptions_user" do
    assert_difference('SubscriptionsUser.count') do
      post subscriptions_users_url, params: { subscriptions_user: { subscription_id: @subscriptions_user.subscription_id, user_id: @subscriptions_user.user_id, user_role: @subscriptions_user.user_role } }
    end

    assert_redirected_to subscriptions_user_url(SubscriptionsUser.last)
  end

  test "should show subscriptions_user" do
    get subscriptions_user_url(@subscriptions_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_subscriptions_user_url(@subscriptions_user)
    assert_response :success
  end

  test "should update subscriptions_user" do
    patch subscriptions_user_url(@subscriptions_user), params: { subscriptions_user: { subscription_id: @subscriptions_user.subscription_id, user_id: @subscriptions_user.user_id, user_role: @subscriptions_user.user_role } }
    assert_redirected_to subscriptions_user_url(@subscriptions_user)
  end

  test "should destroy subscriptions_user" do
    assert_difference('SubscriptionsUser.count', -1) do
      delete subscriptions_user_url(@subscriptions_user)
    end

    assert_redirected_to subscriptions_users_url
  end
end
