require 'test_helper'

class DeveloperProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @developer_project = developer_projects(:one)
  end

  test "should get index" do
    get developer_projects_url
    assert_response :success
  end

  test "should get new" do
    get new_developer_project_url
    assert_response :success
  end

  test "should create developer_project" do
    assert_difference('DeveloperProject.count') do
      post developer_projects_url, params: { developer_project: { developer_id: @developer_project.developer_id, project_id: @developer_project.project_id } }
    end

    assert_redirected_to developer_project_url(DeveloperProject.last)
  end

  test "should show developer_project" do
    get developer_project_url(@developer_project)
    assert_response :success
  end

  test "should get edit" do
    get edit_developer_project_url(@developer_project)
    assert_response :success
  end

  test "should update developer_project" do
    patch developer_project_url(@developer_project), params: { developer_project: { developer_id: @developer_project.developer_id, project_id: @developer_project.project_id } }
    assert_redirected_to developer_project_url(@developer_project)
  end

  test "should destroy developer_project" do
    assert_difference('DeveloperProject.count', -1) do
      delete developer_project_url(@developer_project)
    end

    assert_redirected_to developer_projects_url
  end
end
