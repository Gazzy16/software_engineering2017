require "application_system_test_case"

class TeacherSchoolsTest < ApplicationSystemTestCase
  setup do
    @teacher_school = teacher_schools(:one)
  end

  test "visiting the index" do
    visit teacher_schools_url
    assert_selector "h1", text: "Teacher Schools"
  end

  test "creating a Teacher school" do
    visit teacher_schools_url
    click_on "New Teacher School"

    fill_in "School", with: @teacher_school.school_id
    fill_in "Teacher", with: @teacher_school.teacher_id
    click_on "Create Teacher school"

    assert_text "Teacher school was successfully created"
    click_on "Back"
  end

  test "updating a Teacher school" do
    visit teacher_schools_url
    click_on "Edit", match: :first

    fill_in "School", with: @teacher_school.school_id
    fill_in "Teacher", with: @teacher_school.teacher_id
    click_on "Update Teacher school"

    assert_text "Teacher school was successfully updated"
    click_on "Back"
  end

  test "destroying a Teacher school" do
    visit teacher_schools_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Teacher school was successfully destroyed"
  end
end
