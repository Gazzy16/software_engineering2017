require 'test_helper'

class TeacherSchoolClassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @teacher_school_class = teacher_school_classes(:one)
  end

  test "should get index" do
    get teacher_school_classes_url
    assert_response :success
  end

  test "should get new" do
    get new_teacher_school_class_url
    assert_response :success
  end

  test "should create teacher_school_class" do
    assert_difference('TeacherSchoolClass.count') do
      post teacher_school_classes_url, params: { teacher_school_class: { schoolclass_id: @teacher_school_class.schoolclass_id, teacher_id: @teacher_school_class.teacher_id } }
    end

    assert_redirected_to teacher_school_class_url(TeacherSchoolClass.last)
  end

  test "should show teacher_school_class" do
    get teacher_school_class_url(@teacher_school_class)
    assert_response :success
  end

  test "should get edit" do
    get edit_teacher_school_class_url(@teacher_school_class)
    assert_response :success
  end

  test "should update teacher_school_class" do
    patch teacher_school_class_url(@teacher_school_class), params: { teacher_school_class: { schoolclass_id: @teacher_school_class.schoolclass_id, teacher_id: @teacher_school_class.teacher_id } }
    assert_redirected_to teacher_school_class_url(@teacher_school_class)
  end

  test "should destroy teacher_school_class" do
    assert_difference('TeacherSchoolClass.count', -1) do
      delete teacher_school_class_url(@teacher_school_class)
    end

    assert_redirected_to teacher_school_classes_url
  end
end
