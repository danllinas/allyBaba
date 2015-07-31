require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:michael)
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    patch :update, id: @user, user: { email: @user.email, first_name: @user.first_name }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { email: @user.email, first_name: @user.first_name, last_name: @user.last_name, password: @user.password, password_confirmation: @user.password_confirmation, address: @user.address, city: @user.city, state: @user.state }
    end
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end
    assert_redirected_to root_path
  end

end
