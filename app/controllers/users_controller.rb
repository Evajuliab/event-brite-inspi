class UsersController < ApplicationController
  

  def show
    @user = User.find(params[:id])
    @events = Event.all
    @user.events = current_user.events

  end

  def new
    @users= User.find(current_user.id)
  end
end

