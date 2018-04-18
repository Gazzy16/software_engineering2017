require "application_system_test_case"

class UsersSubscriptionsTest < ApplicationSystemTestCase
  setup do
    @users_subscription = users_subscriptions(:one)
  end

  test "visiting the index" do
    visit users_subscriptions_url
    assert_selector "h1", text: "Users Subscriptions"
  end

  test "creating a Users subscription" do
    visit users_subscriptions_url
    click_on "New Users Subscription"

    fill_in "Role", with: @users_subscription.role
    fill_in "Subscription", with: @users_subscription.subscription_id
    fill_in "User", with: @users_subscription.user_id
    click_on "Create Users subscription"

    assert_text "Users subscription was successfully created"
    click_on "Back"
  end

  test "updating a Users subscription" do
    visit users_subscriptions_url
    click_on "Edit", match: :first

    fill_in "Role", with: @users_subscription.role
    fill_in "Subscription", with: @users_subscription.subscription_id
    fill_in "User", with: @users_subscription.user_id
    click_on "Update Users subscription"

    assert_text "Users subscription was successfully updated"
    click_on "Back"
  end

  test "destroying a Users subscription" do
    visit users_subscriptions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Users subscription was successfully destroyed"
  end
end
