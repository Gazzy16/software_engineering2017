require 'test_helper'

class ByersControllerTest < ActionController::TestCase
  setup do
    @byer = byers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:byers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create byer" do
    assert_difference('Byer.count') do
      post :create, byer: { country: @byer.country, money: @byer.money, name: @byer.name }
    end

    assert_redirected_to byer_path(assigns(:byer))
  end

  test "should show byer" do
    get :show, id: @byer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @byer
    assert_response :success
  end

  test "should update byer" do
    patch :update, id: @byer, byer: { country: @byer.country, money: @byer.money, name: @byer.name }
    assert_redirected_to byer_path(assigns(:byer))
  end

  test "should destroy byer" do
    assert_difference('Byer.count', -1) do
      delete :destroy, id: @byer
    end

    assert_redirected_to byers_path
  end
end
