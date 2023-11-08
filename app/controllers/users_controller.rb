class UsersController < ApplicationController

  def new
  end

  def create
    p "user params: #{user_params}"
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to root_path
    else
      redirect_to signup_path(error: user.errors.full_messages.first)
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

end