class EventsController < ApplicationController
  before_action :authenticate_user!
  def index
    @events = Event.all
  end

  def new
    @event = current_user.events.new
  end

  def create
    @event = current_user.events.new(create_params)
    @event.user_id = current_user.id
    @event.user = current_user

    if @event.save 
      redirect_to event_path(@event)
    else 
      puts '$'*50
      puts @event.errors.messages
      puts '$'*50
      render 'new'
    end
  end

  def show
    @event = Event.find(params[:id])
    
    puts params
  end
  
  def create_params
    params.require(:event).permit(:title, :description, :price, :location, :start_date, :duration, :user_id)
  end
end
