require "application_system_test_case"

class CarmanufacturesTest < ApplicationSystemTestCase
  setup do
    @carmanufacture = carmanufactures(:one)
  end

  test "visiting the index" do
    visit carmanufactures_url
    assert_selector "h1", text: "Carmanufactures"
  end

  test "creating a Carmanufacture" do
    visit carmanufactures_url
    click_on "New Carmanufacture"

    click_on "Create Carmanufacture"

    assert_text "Carmanufacture was successfully created"
    click_on "Back"
  end

  test "updating a Carmanufacture" do
    visit carmanufactures_url
    click_on "Edit", match: :first

    click_on "Update Carmanufacture"

    assert_text "Carmanufacture was successfully updated"
    click_on "Back"
  end

  test "destroying a Carmanufacture" do
    visit carmanufactures_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Carmanufacture was successfully destroyed"
  end
end
