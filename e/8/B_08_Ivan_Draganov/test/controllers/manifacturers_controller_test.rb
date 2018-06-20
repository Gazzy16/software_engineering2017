require 'test_helper'

class ManifacturersControllerTest < ActionController::TestCase
  setup do
    @manifacturer = manifacturers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:manifacturers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create manifacturer" do
    assert_difference('Manifacturer.count') do
      post :create, manifacturer: { location: @manifacturer.location, name: @manifacturer.name }
    end

    assert_redirected_to manifacturer_path(assigns(:manifacturer))
  end

  test "should show manifacturer" do
    get :show, id: @manifacturer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @manifacturer
    assert_response :success
  end

  test "should update manifacturer" do
    patch :update, id: @manifacturer, manifacturer: { location: @manifacturer.location, name: @manifacturer.name }
    assert_redirected_to manifacturer_path(assigns(:manifacturer))
  end

  test "should destroy manifacturer" do
    assert_difference('Manifacturer.count', -1) do
      delete :destroy, id: @manifacturer
    end

    assert_redirected_to manifacturers_path
  end
end
