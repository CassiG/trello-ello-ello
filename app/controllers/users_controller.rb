class UsersController < ApplicationController

  def new
    @users = User.new
  end

  def create
    @user = User.new(user_params)
    @errors = @user.errors.full_messages

    if @user.save
      session[:user_id] = @user.id
      redirect_to boards_path
    else
      @errors
      redirect_to new_user_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
