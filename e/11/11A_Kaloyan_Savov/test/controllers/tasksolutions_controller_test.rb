require 'test_helper'

class TasksolutionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tasksolution = tasksolutions(:one)
  end

  test "should get index" do
    get tasksolutions_url
    assert_response :success
  end

  test "should get new" do
    get new_tasksolution_url
    assert_response :success
  end

  test "should create tasksolution" do
    assert_difference('Tasksolution.count') do
      post tasksolutions_url, params: { tasksolution: { confirmed: @tasksolution.confirmed, status: @tasksolution.status, tasksolution: @tasksolution.tasksolution } }
    end

    assert_redirected_to tasksolution_url(Tasksolution.last)
  end

  test "should show tasksolution" do
    get tasksolution_url(@tasksolution)
    assert_response :success
  end

  test "should get edit" do
    get edit_tasksolution_url(@tasksolution)
    assert_response :success
  end

  test "should update tasksolution" do
    patch tasksolution_url(@tasksolution), params: { tasksolution: { confirmed: @tasksolution.confirmed, status: @tasksolution.status, tasksolution: @tasksolution.tasksolution } }
    assert_redirected_to tasksolution_url(@tasksolution)
  end

  test "should destroy tasksolution" do
    assert_difference('Tasksolution.count', -1) do
      delete tasksolution_url(@tasksolution)
    end

    assert_redirected_to tasksolutions_url
  end
end
