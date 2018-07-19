require 'test_helper'

class TaskSolutionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @task_solution = task_solutions(:one)
  end

  test "should get index" do
    get task_solutions_url
    assert_response :success
  end

  test "should get new" do
    get new_task_solution_url
    assert_response :success
  end

  test "should create task_solution" do
    assert_difference('TaskSolution.count') do
      post task_solutions_url, params: { task_solution: { confirmed: @task_solution.confirmed, picture: @task_solution.picture, status: @task_solution.status, task_id: @task_solution.task_id } }
    end

    assert_redirected_to task_solution_url(TaskSolution.last)
  end

  test "should show task_solution" do
    get task_solution_url(@task_solution)
    assert_response :success
  end

  test "should get edit" do
    get edit_task_solution_url(@task_solution)
    assert_response :success
  end

  test "should update task_solution" do
    patch task_solution_url(@task_solution), params: { task_solution: { confirmed: @task_solution.confirmed, picture: @task_solution.picture, status: @task_solution.status, task_id: @task_solution.task_id } }
    assert_redirected_to task_solution_url(@task_solution)
  end

  test "should destroy task_solution" do
    assert_difference('TaskSolution.count', -1) do
      delete task_solution_url(@task_solution)
    end

    assert_redirected_to task_solutions_url
  end
end
