require "application_system_test_case"

class ShoolsTest < ApplicationSystemTestCase
  setup do
    @shool = shools(:one)
  end

  test "visiting the index" do
    visit shools_url
    assert_selector "h1", text: "Shools"
  end

  test "creating a Shool" do
    visit shools_url
    click_on "New Shool"

    fill_in "Name", with: @shool.name
    fill_in "Number", with: @shool.number
    click_on "Create Shool"

    assert_text "Shool was successfully created"
    click_on "Back"
  end

  test "updating a Shool" do
    visit shools_url
    click_on "Edit", match: :first

    fill_in "Name", with: @shool.name
    fill_in "Number", with: @shool.number
    click_on "Update Shool"

    assert_text "Shool was successfully updated"
    click_on "Back"
  end

  test "destroying a Shool" do
    visit shools_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shool was successfully destroyed"
  end
end
