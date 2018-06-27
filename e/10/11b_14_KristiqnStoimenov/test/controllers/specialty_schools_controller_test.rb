require 'test_helper'

class SpecialtySchoolsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @specialty_school = specialty_schools(:one)
  end

  test "should get index" do
    get specialty_schools_url
    assert_response :success
  end

  test "should get new" do
    get new_specialty_school_url
    assert_response :success
  end

  test "should create specialty_school" do
    assert_difference('SpecialtySchool.count') do
      post specialty_schools_url, params: { specialty_school: { school_id: @specialty_school.school_id, specialty_id: @specialty_school.specialty_id } }
    end

    assert_redirected_to specialty_school_url(SpecialtySchool.last)
  end

  test "should show specialty_school" do
    get specialty_school_url(@specialty_school)
    assert_response :success
  end

  test "should get edit" do
    get edit_specialty_school_url(@specialty_school)
    assert_response :success
  end

  test "should update specialty_school" do
    patch specialty_school_url(@specialty_school), params: { specialty_school: { school_id: @specialty_school.school_id, specialty_id: @specialty_school.specialty_id } }
    assert_redirected_to specialty_school_url(@specialty_school)
  end

  test "should destroy specialty_school" do
    assert_difference('SpecialtySchool.count', -1) do
      delete specialty_school_url(@specialty_school)
    end

    assert_redirected_to specialty_schools_url
  end
end
