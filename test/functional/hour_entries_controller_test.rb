require 'test_helper'

class HourEntriesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hour_entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hour_entry" do
    assert_difference('HourEntry.count') do
      post :create, :hour_entries => { :task_id => 1, :user_id => 1, :time_entry => 1.5, :description => 'MyString', :day => '2008-12-24' }
    end

    assert_redirected_to hour_entry_path(assigns(:hour_entries))
  end

  test "should show hour_entry" do
    get :show, :id => hour_entries(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => hour_entries(:one).id
    assert_response :success
  end

  test "should update hour_entry" do
    put :update, :id => hour_entries(:one).id, :hour_entry => { :task_id => 1, :user_id => 1, :time_entry => 3.5, :description => 'MyString updated', :day => '2008-12-24' }
    assert_redirected_to hour_entry_path(assigns(:hour_entry))
  end

  test "should destroy hour_entries" do
    assert_difference('HourEntry.count', -1) do
      delete :destroy, :id => hour_entries(:one).id
    end

    assert_redirected_to hour_entry_path
  end
end
