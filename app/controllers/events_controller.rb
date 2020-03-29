class EventsController < ApplicationController
  before_action :find_current_user

  def index
    @past_events = Event.past
    @upcoming_events = Event.upcoming
  end

  def new
    @event = @user.events.build
  end

  def create
    @event = @user.events.build(user_params)
    if @event.save
      flash.now[:success] = "Event created successfully"
      render 'show'
    else
      flash.now[:danger] = "Invalid Event entry"
      render 'new'
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  private
    def find_current_user
      @user = current_user
    end

    def user_params
      params.require(:event).permit(:title, :description, :date)
    end
end
