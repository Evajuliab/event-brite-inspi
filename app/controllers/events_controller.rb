class EventsController < ApplicationController
  def index
    @events = Event.all

  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(title: params[:event][:title], 
    description: params[:event][:description], 
    price: params[:event][:price],
    location: params[:event][:location],
    duration: params[:event][:duration],
    start_date: params[:event][:start_date])

    if @event.save 
      redirect_to root_path
    else 
      render 'new'
    end
  end

  def show
    @event = Event.find(params[:id])
  end

end
