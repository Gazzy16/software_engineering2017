require 'test_helper'

class ProjectDevelopersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project_developer = project_developers(:one)
  end

  test "should get index" do
    get project_developers_url
    assert_response :success
  end

  test "should get new" do
    get new_project_developer_url
    assert_response :success
  end

  test "should create project_developer" do
    assert_difference('ProjectDeveloper.count') do
      post project_developers_url, params: { project_developer: { dev_id: @project_developer.dev_id, proj_id: @project_developer.proj_id } }
    end

    assert_redirected_to project_developer_url(ProjectDeveloper.last)
  end

  test "should show project_developer" do
    get project_developer_url(@project_developer)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_developer_url(@project_developer)
    assert_response :success
  end

  test "should update project_developer" do
    patch project_developer_url(@project_developer), params: { project_developer: { dev_id: @project_developer.dev_id, proj_id: @project_developer.proj_id } }
    assert_redirected_to project_developer_url(@project_developer)
  end

  test "should destroy project_developer" do
    assert_difference('ProjectDeveloper.count', -1) do
      delete project_developer_url(@project_developer)
    end

    assert_redirected_to project_developers_url
  end
end
