class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = 'Registered Successfully!!!'
      log_in @user
      render 'show'
    else
      flash[:danger] = 'Invalid entries found'
      render 'new'
    end
  end

  def show
    @user = User.find_by(id: session[:user_id])
    @events = User.find(@user.id).events
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
