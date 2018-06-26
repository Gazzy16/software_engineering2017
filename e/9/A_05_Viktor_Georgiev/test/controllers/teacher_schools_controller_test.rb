require 'test_helper'

class TeacherSchoolsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @teacher_school = teacher_schools(:one)
  end

  test "should get index" do
    get teacher_schools_url
    assert_response :success
  end

  test "should get new" do
    get new_teacher_school_url
    assert_response :success
  end

  test "should create teacher_school" do
    assert_difference('TeacherSchool.count') do
      post teacher_schools_url, params: { teacher_school: { school_id: @teacher_school.school_id, teacher_id: @teacher_school.teacher_id } }
    end

    assert_redirected_to teacher_school_url(TeacherSchool.last)
  end

  test "should show teacher_school" do
    get teacher_school_url(@teacher_school)
    assert_response :success
  end

  test "should get edit" do
    get edit_teacher_school_url(@teacher_school)
    assert_response :success
  end

  test "should update teacher_school" do
    patch teacher_school_url(@teacher_school), params: { teacher_school: { school_id: @teacher_school.school_id, teacher_id: @teacher_school.teacher_id } }
    assert_redirected_to teacher_school_url(@teacher_school)
  end

  test "should destroy teacher_school" do
    assert_difference('TeacherSchool.count', -1) do
      delete teacher_school_url(@teacher_school)
    end

    assert_redirected_to teacher_schools_url
  end
end
