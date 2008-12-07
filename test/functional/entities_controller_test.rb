require 'test_helper'

class EntitiesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create entity" do
    assert_difference('Entity.count') do
      post :create, :entity => { }
    end

    assert_redirected_to entity_path(assigns(:entity))
  end

  test "should show entity" do
    get :show, :id => entities(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => entities(:one).id
    assert_response :success
  end

  test "should update entity" do
    put :update, :id => entities(:one).id, :entity => { }
    assert_redirected_to entity_path(assigns(:entity))
  end

  test "should destroy entity" do
    assert_difference('Entity.count', -1) do
      delete :destroy, :id => entities(:one).id
    end

    assert_redirected_to entities_path
  end
end
