require 'test_helper'

class TasksolutionsControllerTest < ActionController::TestCase
  setup do
    @tasksolution = tasksolutions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tasksolutions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tasksolution" do
    assert_difference('Tasksolution.count') do
      post :create, tasksolution: { confirmed: @tasksolution.confirmed, sid: @tasksolution.sid, status: @tasksolution.status, texts: @tasksolution.texts }
    end

    assert_redirected_to tasksolution_path(assigns(:tasksolution))
  end

  test "should show tasksolution" do
    get :show, id: @tasksolution
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tasksolution
    assert_response :success
  end

  test "should update tasksolution" do
    patch :update, id: @tasksolution, tasksolution: { confirmed: @tasksolution.confirmed, sid: @tasksolution.sid, status: @tasksolution.status, texts: @tasksolution.texts }
    assert_redirected_to tasksolution_path(assigns(:tasksolution))
  end

  test "should destroy tasksolution" do
    assert_difference('Tasksolution.count', -1) do
      delete :destroy, id: @tasksolution
    end

    assert_redirected_to tasksolutions_path
  end
end
