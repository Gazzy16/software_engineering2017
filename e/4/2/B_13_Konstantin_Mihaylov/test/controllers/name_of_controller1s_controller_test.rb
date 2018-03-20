require 'test_helper'

class NameOfController1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @name_of_controller1 = name_of_controller1s(:one)
  end

  test "should get index" do
    get name_of_controller1s_url
    assert_response :success
  end

  test "should get new" do
    get new_name_of_controller1_url
    assert_response :success
  end

  test "should create name_of_controller1" do
    assert_difference('NameOfController1.count') do
      post name_of_controller1s_url, params: { name_of_controller1: { content: @name_of_controller1.content, name: @name_of_controller1.name, title: @name_of_controller1.title } }
    end

    assert_redirected_to name_of_controller1_url(NameOfController1.last)
  end

  test "should show name_of_controller1" do
    get name_of_controller1_url(@name_of_controller1)
    assert_response :success
  end

  test "should get edit" do
    get edit_name_of_controller1_url(@name_of_controller1)
    assert_response :success
  end

  test "should update name_of_controller1" do
    patch name_of_controller1_url(@name_of_controller1), params: { name_of_controller1: { content: @name_of_controller1.content, name: @name_of_controller1.name, title: @name_of_controller1.title } }
    assert_redirected_to name_of_controller1_url(@name_of_controller1)
  end

  test "should destroy name_of_controller1" do
    assert_difference('NameOfController1.count', -1) do
      delete name_of_controller1_url(@name_of_controller1)
    end

    assert_redirected_to name_of_controller1s_url
  end
end
