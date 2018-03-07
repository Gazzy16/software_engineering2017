require 'test_helper'

class StudentKokisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student_koki = student_kokis(:one)
  end

  test "should get index" do
    get student_kokis_url
    assert_response :success
  end

  test "should get new" do
    get new_student_koki_url
    assert_response :success
  end

  test "should create student_koki" do
    assert_difference('StudentKoki.count') do
      post student_kokis_url, params: { student_koki: { email: @student_koki.email, first_name: @student_koki.first_name, school: @student_koki.school, second_name: @student_koki.second_name } }
    end

    assert_redirected_to student_koki_url(StudentKoki.last)
  end

  test "should show student_koki" do
    get student_koki_url(@student_koki)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_koki_url(@student_koki)
    assert_response :success
  end

  test "should update student_koki" do
    patch student_koki_url(@student_koki), params: { student_koki: { email: @student_koki.email, first_name: @student_koki.first_name, school: @student_koki.school, second_name: @student_koki.second_name } }
    assert_redirected_to student_koki_url(@student_koki)
  end

  test "should destroy student_koki" do
    assert_difference('StudentKoki.count', -1) do
      delete student_koki_url(@student_koki)
    end

    assert_redirected_to student_kokis_url
  end
end
