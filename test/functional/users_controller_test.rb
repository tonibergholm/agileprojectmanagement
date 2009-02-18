require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, :user => { :login => 'MyString-new', :crypted_password => 'MyString', :password_salt => 'MyString', :persistence_token => 'MyString', :login_count => 1, :last_request_at => '2008-12-04 16:14:51', :last_login_at => '2008-12-04 16:14:51', :current_login_at => '2008-12-04 16:14:51', :last_login_ip => 'MyString', :current_login_ip => 'MyString' }
    end

    assert_redirected_to account_path(assigns(:user))
  end

  test "should show user" do
    get :show, :id => users(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => users(:one).id
    assert_response :success
  end

  test "should update user" do
    put :update, :id => users(:one).id, :user => { :login => 'MyString-new', :crypted_password => 'MyString2', :password_salt => 'MyString', :persistence_token => 'MyString', :login_count => 1, :last_request_at => '2008-12-04 16:14:51', :last_login_at => '2008-12-04 16:14:51', :current_login_at => '2008-12-04 16:14:51', :last_login_ip => 'MyString', :current_login_ip => 'MyString' }
    assert_redirected_to account_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, :id => users(:one).id
    end

    assert_redirected_to accounts_path
  end
end
