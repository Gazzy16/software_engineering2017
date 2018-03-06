require 'test_helper'

class Processdeni09sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @processdeni09 = processdeni09s(:one)
  end

  test "should get index" do
    get processdeni09s_url
    assert_response :success
  end

  test "should get new" do
    get new_processdeni09_url
    assert_response :success
  end

  test "should create processdeni09" do
    assert_difference('Processdeni09.count') do
      post processdeni09s_url, params: { processdeni09: { name: @processdeni09.name, pid: @processdeni09.pid } }
    end

    assert_redirected_to processdeni09_url(Processdeni09.last)
  end

  test "should show processdeni09" do
    get processdeni09_url(@processdeni09)
    assert_response :success
  end

  test "should get edit" do
    get edit_processdeni09_url(@processdeni09)
    assert_response :success
  end

  test "should update processdeni09" do
    patch processdeni09_url(@processdeni09), params: { processdeni09: { name: @processdeni09.name, pid: @processdeni09.pid } }
    assert_redirected_to processdeni09_url(@processdeni09)
  end

  test "should destroy processdeni09" do
    assert_difference('Processdeni09.count', -1) do
      delete processdeni09_url(@processdeni09)
    end

    assert_redirected_to processdeni09s_url
  end
end
