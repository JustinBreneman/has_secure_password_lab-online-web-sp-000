class UsersController < ApplicationController
  def index
  end

  def new
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
    else
      redirect_to users_signup_path
    end
  end

  def login
  end

  private

    def user_params
      params.require(:user).permit(:name, :password, :password_confirmation)
    end
end
