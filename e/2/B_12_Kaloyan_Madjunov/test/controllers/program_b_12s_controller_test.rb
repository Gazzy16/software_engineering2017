require 'test_helper'

class ProgramB12sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @program_b_12 = program_b_12s(:one)
  end

  test "should get index" do
    get program_b_12s_url
    assert_response :success
  end

  test "should get new" do
    get new_program_b_12_url
    assert_response :success
  end

  test "should create program_b_12" do
    assert_difference('ProgramB12.count') do
      post program_b_12s_url, params: { program_b_12: { thread_id: @program_b_12.thread_id } }
    end

    assert_redirected_to program_b_12_url(ProgramB12.last)
  end

  test "should show program_b_12" do
    get program_b_12_url(@program_b_12)
    assert_response :success
  end

  test "should get edit" do
    get edit_program_b_12_url(@program_b_12)
    assert_response :success
  end

  test "should update program_b_12" do
    patch program_b_12_url(@program_b_12), params: { program_b_12: { thread_id: @program_b_12.thread_id } }
    assert_redirected_to program_b_12_url(@program_b_12)
  end

  test "should destroy program_b_12" do
    assert_difference('ProgramB12.count', -1) do
      delete program_b_12_url(@program_b_12)
    end

    assert_redirected_to program_b_12s_url
  end
end
