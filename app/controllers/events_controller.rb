class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def new
    @user = current_user
    @event = @user.events.build
  end

  def create
    @user = current_user
    @event = @user.events.build(user_params)
    if @event.save
      @event.update_attribute(:date,Date.today)
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

    def user_params
      params.require(:event).permit(:title, :description)
    end
end
