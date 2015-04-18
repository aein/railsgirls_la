require 'test_helper'

class AdventuresControllerTest < ActionController::TestCase
  setup do
    @adventure = adventures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adventures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adventure" do
    assert_difference('Adventure.count') do
      post :create, adventure: { address: @adventure.address, cents: @adventure.cents, description: @adventure.description, name: @adventure.name, picture: @adventure.picture, visit: @adventure.visit }
    end

    assert_redirected_to adventure_path(assigns(:adventure))
  end

  test "should show adventure" do
    get :show, id: @adventure
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adventure
    assert_response :success
  end

  test "should update adventure" do
    patch :update, id: @adventure, adventure: { address: @adventure.address, cents: @adventure.cents, description: @adventure.description, name: @adventure.name, picture: @adventure.picture, visit: @adventure.visit }
    assert_redirected_to adventure_path(assigns(:adventure))
  end

  test "should destroy adventure" do
    assert_difference('Adventure.count', -1) do
      delete :destroy, id: @adventure
    end

    assert_redirected_to adventures_path
  end
end
