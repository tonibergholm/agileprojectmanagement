require 'test_helper'

class HoursControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hours)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hours" do
    assert_difference('Hours.count') do
      post :create, :hours => { }
    end

    assert_redirected_to hours_path(assigns(:hours))
  end

  test "should show hours" do
    get :show, :id => hours(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => hours(:one).id
    assert_response :success
  end

  test "should update hours" do
    put :update, :id => hours(:one).id, :hours => { }
    assert_redirected_to hours_path(assigns(:hours))
  end

  test "should destroy hours" do
    assert_difference('Hours.count', -1) do
      delete :destroy, :id => hours(:one).id
    end

    assert_redirected_to hours_path
  end
end
