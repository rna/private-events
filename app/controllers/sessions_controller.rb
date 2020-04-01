class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(id: params[:session][:username]) || User.find_by(name: params[:session][:username])
    if user
      log_in user
      flash[:success] = 'Logged in successfully'
      redirect_to controller: 'users', action: 'show', id: user.id
    else
      flash.now[:danger] = 'Invalid ID or Name'
      render 'new'
    end
  end

  def destroy
    log_out
    flash[:success] = 'Logged out successfully'
    redirect_to root_url
  end

  private

  def user_params
    params.require(:user).permit(:username)
  end
end
