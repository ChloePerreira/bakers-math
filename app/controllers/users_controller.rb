class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:email, :display, :password))
    if @user.save
      redirect_to new_session_path
    else
      render :new
    end
  end

  def dashboard
    @user = User.find(session[:user_id])
    @recipes = Recipe.where(user_id: session[:user_id])
  end

end
