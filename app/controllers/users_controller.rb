class UsersController < ApplicationController

  def new
    @users = User.new
  end

  def create
    @user = User.create(user_params)
    redirect_to boards_path
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
