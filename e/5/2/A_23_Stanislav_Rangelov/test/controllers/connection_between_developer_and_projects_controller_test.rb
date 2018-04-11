require 'test_helper'

class ConnectionBetweenDeveloperAndProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @connection_between_developer_and_project = connection_between_developer_and_projects(:one)
  end

  test "should get index" do
    get connection_between_developer_and_projects_url
    assert_response :success
  end

  test "should get new" do
    get new_connection_between_developer_and_project_url
    assert_response :success
  end

  test "should create connection_between_developer_and_project" do
    assert_difference('ConnectionBetweenDeveloperAndProject.count') do
      post connection_between_developer_and_projects_url, params: { connection_between_developer_and_project: { developer_id: @connection_between_developer_and_project.developer_id, project_id: @connection_between_developer_and_project.project_id } }
    end

    assert_redirected_to connection_between_developer_and_project_url(ConnectionBetweenDeveloperAndProject.last)
  end

  test "should show connection_between_developer_and_project" do
    get connection_between_developer_and_project_url(@connection_between_developer_and_project)
    assert_response :success
  end

  test "should get edit" do
    get edit_connection_between_developer_and_project_url(@connection_between_developer_and_project)
    assert_response :success
  end

  test "should update connection_between_developer_and_project" do
    patch connection_between_developer_and_project_url(@connection_between_developer_and_project), params: { connection_between_developer_and_project: { developer_id: @connection_between_developer_and_project.developer_id, project_id: @connection_between_developer_and_project.project_id } }
    assert_redirected_to connection_between_developer_and_project_url(@connection_between_developer_and_project)
  end

  test "should destroy connection_between_developer_and_project" do
    assert_difference('ConnectionBetweenDeveloperAndProject.count', -1) do
      delete connection_between_developer_and_project_url(@connection_between_developer_and_project)
    end

    assert_redirected_to connection_between_developer_and_projects_url
  end
end
