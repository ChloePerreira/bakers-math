class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(email: params[:user][:email])
    if @user
      if @user.password == params[:user][:password]
        session[:user_id] = @user.id
        redirect_to dashboard_path
      else
        redirect_to new_session_path
      end
    else 
      redirect_to new_session_path
    end
  end 

  def destroy
    session[:user_id]=nil
    redirect_to root_path
  end

end
