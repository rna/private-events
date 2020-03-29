class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash.now[:success] = 'Registered Successfully!!!'
      log_in @user
      @current_user = @user
      render 'show'
    else
      flash[:danger] = 'Invalid entries found'
      render 'new'
    end
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def upcoming_events
    @upcoming_events = @current_user.upcoming_events
  end

  def show
    if current_user.nil?
      flash[:danger] = 'You need to Signin'
      redirect_to root_url
    else
      @events = User.find(current_user.id).events
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
