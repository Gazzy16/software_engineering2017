require 'test_helper'

class TeachersSchoolsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @teachers_school = teachers_schools(:one)
  end

  test "should get index" do
    get teachers_schools_url
    assert_response :success
  end

  test "should get new" do
    get new_teachers_school_url
    assert_response :success
  end

  test "should create teachers_school" do
    assert_difference('TeachersSchool.count') do
      post teachers_schools_url, params: { teachers_school: { id_school: @teachers_school.id_school, id_teacher: @teachers_school.id_teacher } }
    end

    assert_redirected_to teachers_school_url(TeachersSchool.last)
  end

  test "should show teachers_school" do
    get teachers_school_url(@teachers_school)
    assert_response :success
  end

  test "should get edit" do
    get edit_teachers_school_url(@teachers_school)
    assert_response :success
  end

  test "should update teachers_school" do
    patch teachers_school_url(@teachers_school), params: { teachers_school: { id_school: @teachers_school.id_school, id_teacher: @teachers_school.id_teacher } }
    assert_redirected_to teachers_school_url(@teachers_school)
  end

  test "should destroy teachers_school" do
    assert_difference('TeachersSchool.count', -1) do
      delete teachers_school_url(@teachers_school)
    end

    assert_redirected_to teachers_schools_url
  end
end
