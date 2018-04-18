require 'test_helper'

class SubscriptionusersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subscriptionuser = subscriptionusers(:one)
  end

  test "should get index" do
    get subscriptionusers_url
    assert_response :success
  end

  test "should get new" do
    get new_subscriptionuser_url
    assert_response :success
  end

  test "should create subscriptionuser" do
    assert_difference('Subscriptionuser.count') do
      post subscriptionusers_url, params: { subscriptionuser: { price: @subscriptionuser.price, subscription_id: @subscriptionuser.subscription_id, user_id: @subscriptionuser.user_id } }
    end

    assert_redirected_to subscriptionuser_url(Subscriptionuser.last)
  end

  test "should show subscriptionuser" do
    get subscriptionuser_url(@subscriptionuser)
    assert_response :success
  end

  test "should get edit" do
    get edit_subscriptionuser_url(@subscriptionuser)
    assert_response :success
  end

  test "should update subscriptionuser" do
    patch subscriptionuser_url(@subscriptionuser), params: { subscriptionuser: { price: @subscriptionuser.price, subscription_id: @subscriptionuser.subscription_id, user_id: @subscriptionuser.user_id } }
    assert_redirected_to subscriptionuser_url(@subscriptionuser)
  end

  test "should destroy subscriptionuser" do
    assert_difference('Subscriptionuser.count', -1) do
      delete subscriptionuser_url(@subscriptionuser)
    end

    assert_redirected_to subscriptionusers_url
  end
end
