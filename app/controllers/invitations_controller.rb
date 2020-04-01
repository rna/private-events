class InvitationsController < ApplicationController
  before_action :signed_in_user

  def new
    @invite = Attendance.new
    @event = Event.find_by(id: params[:event_id])
    @users = User.all.where.not(id: @user.id)
  end

  def create
    @invite = Attendance.new(
      attendee_id: params[:attendee_id],
      attended_event_id: params[:event_id]
    )
    if @invite.save
      flash[:success] = 'Invitation sent successfully'
      redirect_to user_path(@user)
    else
      redirect_to new_invitation_path(@event)
    end
  end
end
