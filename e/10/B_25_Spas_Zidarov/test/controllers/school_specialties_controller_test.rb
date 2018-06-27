require 'test_helper'

class SchoolSpecialtiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @school_specialty = school_specialties(:one)
  end

  test "should get index" do
    get school_specialties_url
    assert_response :success
  end

  test "should get new" do
    get new_school_specialty_url
    assert_response :success
  end

  test "should create school_specialty" do
    assert_difference('SchoolSpecialty.count') do
      post school_specialties_url, params: { school_specialty: { school_id: @school_specialty.school_id, specialty_id: @school_specialty.specialty_id } }
    end

    assert_redirected_to school_specialty_url(SchoolSpecialty.last)
  end

  test "should show school_specialty" do
    get school_specialty_url(@school_specialty)
    assert_response :success
  end

  test "should get edit" do
    get edit_school_specialty_url(@school_specialty)
    assert_response :success
  end

  test "should update school_specialty" do
    patch school_specialty_url(@school_specialty), params: { school_specialty: { school_id: @school_specialty.school_id, specialty_id: @school_specialty.specialty_id } }
    assert_redirected_to school_specialty_url(@school_specialty)
  end

  test "should destroy school_specialty" do
    assert_difference('SchoolSpecialty.count', -1) do
      delete school_specialty_url(@school_specialty)
    end

    assert_redirected_to school_specialties_url
  end
end
