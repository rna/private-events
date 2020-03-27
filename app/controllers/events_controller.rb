class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @user = User.find_by(id:session[:user_id])
    @event = @user.events.build
  end

  def create
    @user = User.find_by(id: session[:user_id])
    @event = @user.events.build(user_params)
    if @event.save
      flash.now[:success] = "Event created successfully"
      render 'show'
    else
      flash.now[:danger] = "Invalid Event"
      render 'new'
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  private

    def user_params
      params.require(:event).permit(:title, :description)
    end
end
