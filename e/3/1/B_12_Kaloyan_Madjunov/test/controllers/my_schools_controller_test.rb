require 'test_helper'

class MySchoolsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @my_school = my_schools(:one)
  end

  test "should get index" do
    get my_schools_url
    assert_response :success
  end

  test "should get new" do
    get new_my_school_url
    assert_response :success
  end

  test "should create my_school" do
    assert_difference('MySchool.count') do
      post my_schools_url, params: { my_school: { school_name: @my_school.school_name, school_number: @my_school.school_number } }
    end

    assert_redirected_to my_school_url(MySchool.last)
  end

  test "should show my_school" do
    get my_school_url(@my_school)
    assert_response :success
  end

  test "should get edit" do
    get edit_my_school_url(@my_school)
    assert_response :success
  end

  test "should update my_school" do
    patch my_school_url(@my_school), params: { my_school: { school_name: @my_school.school_name, school_number: @my_school.school_number } }
    assert_redirected_to my_school_url(@my_school)
  end

  test "should destroy my_school" do
    assert_difference('MySchool.count', -1) do
      delete my_school_url(@my_school)
    end

    assert_redirected_to my_schools_url
  end
end
