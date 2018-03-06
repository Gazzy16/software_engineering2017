require 'test_helper'

class ProgramsControllerTest < ActionController::TestCase
  setup do
    @threadr = threadrs(:one)
    @program = programs(:one)
  end

  test "should get index" do
    get :index, params: { threadr_id: @threadr }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { threadr_id: @threadr }
    assert_response :success
  end

  test "should create program" do
    assert_difference('Program.count') do
      post :create, params: { threadr_id: @threadr, program: @program.attributes }
    end

    assert_redirected_to threadr_program_path(@threadr, Program.last)
  end

  test "should show program" do
    get :show, params: { threadr_id: @threadr, id: @program }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { threadr_id: @threadr, id: @program }
    assert_response :success
  end

  test "should update program" do
    put :update, params: { threadr_id: @threadr, id: @program, program: @program.attributes }
    assert_redirected_to threadr_program_path(@threadr, Program.last)
  end

  test "should destroy program" do
    assert_difference('Program.count', -1) do
      delete :destroy, params: { threadr_id: @threadr, id: @program }
    end

    assert_redirected_to threadr_programs_path(@threadr)
  end
end
