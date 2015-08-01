class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def new
    @user = User.new
  end

  def show
  end

  def edit
  end

  def update
    @user.update(user_params)
    flash[:success] = "User successfully updated."
    redirect_to @user
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Congratulations! Account creation successful."
      redirect_to @user
    else
      render 'new'
    end
  end

  def destroy
    @user.destroy
    flash[:success] = "User account was destroyed."
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name)
  end

  def set_user
    @user = User.find(params[:id])
  end


end
