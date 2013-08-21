require 'test_helper'

class DellsControllerTest < ActionController::TestCase
  setup do
    @dell = dells(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dells)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dell" do
    assert_difference('Dell.count') do
      post :create, dell: @dell.attributes
    end

    assert_redirected_to dell_path(assigns(:dell))
  end

  test "should show dell" do
    get :show, id: @dell
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dell
    assert_response :success
  end

  test "should update dell" do
    put :update, id: @dell, dell: @dell.attributes
    assert_redirected_to dell_path(assigns(:dell))
  end

  test "should destroy dell" do
    assert_difference('Dell.count', -1) do
      delete :destroy, id: @dell
    end

    assert_redirected_to dells_path
  end
end
