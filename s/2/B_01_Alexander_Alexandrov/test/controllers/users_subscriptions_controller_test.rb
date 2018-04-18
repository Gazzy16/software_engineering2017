require 'test_helper'

class UsersSubscriptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @users_subscription = users_subscriptions(:one)
  end

  test "should get index" do
    get users_subscriptions_url
    assert_response :success
  end

  test "should get new" do
    get new_users_subscription_url
    assert_response :success
  end

  test "should create users_subscription" do
    assert_difference('UsersSubscription.count') do
      post users_subscriptions_url, params: { users_subscription: { role: @users_subscription.role, subscription_id: @users_subscription.subscription_id, user_id: @users_subscription.user_id } }
    end

    assert_redirected_to users_subscription_url(UsersSubscription.last)
  end

  test "should show users_subscription" do
    get users_subscription_url(@users_subscription)
    assert_response :success
  end

  test "should get edit" do
    get edit_users_subscription_url(@users_subscription)
    assert_response :success
  end

  test "should update users_subscription" do
    patch users_subscription_url(@users_subscription), params: { users_subscription: { role: @users_subscription.role, subscription_id: @users_subscription.subscription_id, user_id: @users_subscription.user_id } }
    assert_redirected_to users_subscription_url(@users_subscription)
  end

  test "should destroy users_subscription" do
    assert_difference('UsersSubscription.count', -1) do
      delete users_subscription_url(@users_subscription)
    end

    assert_redirected_to users_subscriptions_url
  end
end
