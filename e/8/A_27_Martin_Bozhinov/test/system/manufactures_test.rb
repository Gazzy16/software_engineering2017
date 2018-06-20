require "application_system_test_case"

class ManufacturesTest < ApplicationSystemTestCase
  setup do
    @manufacture = manufactures(:one)
  end

  test "visiting the index" do
    visit manufactures_url
    assert_selector "h1", text: "Manufactures"
  end

  test "creating a Manufacture" do
    visit manufactures_url
    click_on "New Manufacture"

    fill_in "Location", with: @manufacture.location
    fill_in "Name", with: @manufacture.name
    click_on "Create Manufacture"

    assert_text "Manufacture was successfully created"
    click_on "Back"
  end

  test "updating a Manufacture" do
    visit manufactures_url
    click_on "Edit", match: :first

    fill_in "Location", with: @manufacture.location
    fill_in "Name", with: @manufacture.name
    click_on "Update Manufacture"

    assert_text "Manufacture was successfully updated"
    click_on "Back"
  end

  test "destroying a Manufacture" do
    visit manufactures_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Manufacture was successfully destroyed"
  end
end
