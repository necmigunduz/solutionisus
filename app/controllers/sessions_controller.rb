class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(username: user_params[:username].strip)
    if @user
      session[:user_id] = @user.id
      flash[:success] = 'You have successfully signed in'
      redirect_to user_path(current_user.id)
    else
      flash.now[:alert] = 'Username is not found! Please try again!'
      render 'new'
    end
  end

  def destroy
    reset_session
    flash[:success] = 'You signed out successfully!'
    redirect_to new_session_path
  end

  private

  def user_params
    params.require(:user).permit(:username)
  end
end
