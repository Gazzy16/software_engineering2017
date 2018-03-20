require 'test_helper'

class ProgramKokisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @program_koki = program_kokis(:one)
  end

  test "should get index" do
    get program_kokis_url
    assert_response :success
  end

  test "should get new" do
    get new_program_koki_url
    assert_response :success
  end

  test "should create program_koki" do
    assert_difference('ProgramKoki.count') do
      post program_kokis_url, params: { program_koki: { content: @program_koki.content, name: @program_koki.name, title: @program_koki.title } }
    end

    assert_redirected_to program_koki_url(ProgramKoki.last)
  end

  test "should show program_koki" do
    get program_koki_url(@program_koki)
    assert_response :success
  end

  test "should get edit" do
    get edit_program_koki_url(@program_koki)
    assert_response :success
  end

  test "should update program_koki" do
    patch program_koki_url(@program_koki), params: { program_koki: { content: @program_koki.content, name: @program_koki.name, title: @program_koki.title } }
    assert_redirected_to program_koki_url(@program_koki)
  end

  test "should destroy program_koki" do
    assert_difference('ProgramKoki.count', -1) do
      delete program_koki_url(@program_koki)
    end

    assert_redirected_to program_kokis_url
  end
end
