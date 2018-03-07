require 'test_helper'

class MschoolsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mschool = mschools(:one)
  end

  test "should get index" do
    get mschools_url
    assert_response :success
  end

  test "should get new" do
    get new_mschool_url
    assert_response :success
  end

  test "should create mschool" do
    assert_difference('Mschool.count') do
      post mschools_url, params: { mschool: { name: @mschool.name, number: @mschool.number } }
    end

    assert_redirected_to mschool_url(Mschool.last)
  end

  test "should show mschool" do
    get mschool_url(@mschool)
    assert_response :success
  end

  test "should get edit" do
    get edit_mschool_url(@mschool)
    assert_response :success
  end

  test "should update mschool" do
    patch mschool_url(@mschool), params: { mschool: { name: @mschool.name, number: @mschool.number } }
    assert_redirected_to mschool_url(@mschool)
  end

  test "should destroy mschool" do
    assert_difference('Mschool.count', -1) do
      delete mschool_url(@mschool)
    end

    assert_redirected_to mschools_url
  end
end
