require 'test_helper'

class DeveloperProjectConnectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @developer_project_connection = developer_project_connections(:one)
  end

  test "should get index" do
    get developer_project_connections_url
    assert_response :success
  end

  test "should get new" do
    get new_developer_project_connection_url
    assert_response :success
  end

  test "should create developer_project_connection" do
    assert_difference('DeveloperProjectConnection.count') do
      post developer_project_connections_url, params: { developer_project_connection: { delevoper_id: @developer_project_connection.delevoper_id, project_id: @developer_project_connection.project_id } }
    end

    assert_redirected_to developer_project_connection_url(DeveloperProjectConnection.last)
  end

  test "should show developer_project_connection" do
    get developer_project_connection_url(@developer_project_connection)
    assert_response :success
  end

  test "should get edit" do
    get edit_developer_project_connection_url(@developer_project_connection)
    assert_response :success
  end

  test "should update developer_project_connection" do
    patch developer_project_connection_url(@developer_project_connection), params: { developer_project_connection: { delevoper_id: @developer_project_connection.delevoper_id, project_id: @developer_project_connection.project_id } }
    assert_redirected_to developer_project_connection_url(@developer_project_connection)
  end

  test "should destroy developer_project_connection" do
    assert_difference('DeveloperProjectConnection.count', -1) do
      delete developer_project_connection_url(@developer_project_connection)
    end

    assert_redirected_to developer_project_connections_url
  end
end
