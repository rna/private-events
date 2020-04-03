class EventsController < ApplicationController
  before_action :signed_in_user

  def index
    @past_events = Event.past.all
    @upcoming_events = Event.upcoming.all
  end

  def new
    @event = @user.events.build
  end

  def create
    @event = @user.events.build(user_params)
    if @event.save
      flash.now[:success] = 'Event created successfully'
      render 'show'
    else
      flash.now[:danger] = 'Invalid Event entry'
      render 'new'
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  private

  def user_params
    params.require(:event).permit(:title, :description, :date)
  end
end
