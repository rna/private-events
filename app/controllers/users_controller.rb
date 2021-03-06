class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = 'Registered Successfully!!!'
      redirect_to root_url
    else
      flash[:danger] = 'Invalid entries found'
      render 'new'
    end
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def show
    if current_user.nil?
      flash[:danger] = 'You need to Signin'
      redirect_to root_url
    else
      @events = User.find(@current_user.id).events
      @upcoming_events = @current_user.attended_events.upcoming
      @past_events = @current_user.attended_events.past
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
