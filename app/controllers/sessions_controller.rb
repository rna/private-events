class SessionsController < ApplicationController
  def new
  end

  def create
  end

  def destroy
  end

  private
    def user_params
      params.require(:user).permit(:username)
    end
end
