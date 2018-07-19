require "application_system_test_case"

class TasksolutionsTest < ApplicationSystemTestCase
  setup do
    @tasksolution = tasksolutions(:one)
  end

  test "visiting the index" do
    visit tasksolutions_url
    assert_selector "h1", text: "Tasksolutions"
  end

  test "creating a Tasksolution" do
    visit tasksolutions_url
    click_on "New Tasksolution"

    fill_in "Confirmed", with: @tasksolution.confirmed
    fill_in "Status", with: @tasksolution.status
    fill_in "Tasksolution", with: @tasksolution.tasksolution
    click_on "Create Tasksolution"

    assert_text "Tasksolution was successfully created"
    click_on "Back"
  end

  test "updating a Tasksolution" do
    visit tasksolutions_url
    click_on "Edit", match: :first

    fill_in "Confirmed", with: @tasksolution.confirmed
    fill_in "Status", with: @tasksolution.status
    fill_in "Tasksolution", with: @tasksolution.tasksolution
    click_on "Update Tasksolution"

    assert_text "Tasksolution was successfully updated"
    click_on "Back"
  end

  test "destroying a Tasksolution" do
    visit tasksolutions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tasksolution was successfully destroyed"
  end
end
