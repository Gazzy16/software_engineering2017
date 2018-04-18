require "application_system_test_case"

class SubscriptionusersTest < ApplicationSystemTestCase
  setup do
    @subscriptionuser = subscriptionusers(:one)
  end

  test "visiting the index" do
    visit subscriptionusers_url
    assert_selector "h1", text: "Subscriptionusers"
  end

  test "creating a Subscriptionuser" do
    visit subscriptionusers_url
    click_on "New Subscriptionuser"

    fill_in "Price", with: @subscriptionuser.price
    fill_in "Subscription", with: @subscriptionuser.subscription_id
    fill_in "User", with: @subscriptionuser.user_id
    click_on "Create Subscriptionuser"

    assert_text "Subscriptionuser was successfully created"
    click_on "Back"
  end

  test "updating a Subscriptionuser" do
    visit subscriptionusers_url
    click_on "Edit", match: :first

    fill_in "Price", with: @subscriptionuser.price
    fill_in "Subscription", with: @subscriptionuser.subscription_id
    fill_in "User", with: @subscriptionuser.user_id
    click_on "Update Subscriptionuser"

    assert_text "Subscriptionuser was successfully updated"
    click_on "Back"
  end

  test "destroying a Subscriptionuser" do
    visit subscriptionusers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Subscriptionuser was successfully destroyed"
  end
end
