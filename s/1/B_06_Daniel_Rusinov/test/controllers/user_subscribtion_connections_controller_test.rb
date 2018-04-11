require 'test_helper'

class UserSubscribtionConnectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_subscribtion_connection = user_subscribtion_connections(:one)
  end

  test "should get index" do
    get user_subscribtion_connections_url
    assert_response :success
  end

  test "should get new" do
    get new_user_subscribtion_connection_url
    assert_response :success
  end

  test "should create user_subscribtion_connection" do
    assert_difference('UserSubscribtionConnection.count') do
      post user_subscribtion_connections_url, params: { user_subscribtion_connection: { role: @user_subscribtion_connection.role, subscription_id: @user_subscribtion_connection.subscription_id, user_id: @user_subscribtion_connection.user_id } }
    end

    assert_redirected_to user_subscribtion_connection_url(UserSubscribtionConnection.last)
  end

  test "should show user_subscribtion_connection" do
    get user_subscribtion_connection_url(@user_subscribtion_connection)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_subscribtion_connection_url(@user_subscribtion_connection)
    assert_response :success
  end

  test "should update user_subscribtion_connection" do
    patch user_subscribtion_connection_url(@user_subscribtion_connection), params: { user_subscribtion_connection: { role: @user_subscribtion_connection.role, subscription_id: @user_subscribtion_connection.subscription_id, user_id: @user_subscribtion_connection.user_id } }
    assert_redirected_to user_subscribtion_connection_url(@user_subscribtion_connection)
  end

  test "should destroy user_subscribtion_connection" do
    assert_difference('UserSubscribtionConnection.count', -1) do
      delete user_subscribtion_connection_url(@user_subscribtion_connection)
    end

    assert_redirected_to user_subscribtion_connections_url
  end
end
