class EventsController < ApplicationController

  def index
    @events = Event.all
    @event_speakers = EventSpeaker.where(application_status: 'applying')
  end

  def new
  end

  def create
    event = Event.new
    event.name = params[:name]
    event.time = params[:time]
    if event.save
      redirect_to '/events'
    else
      render :new
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    event = Event.find(params[:id])
    event.name = params[:name]
    event.time = params[:time]
    if event.save
      redirect_to '/events'
    else 
      render :edit
    end
  end

  def destroy
    event = Event.find(params[:id])
    event.destroy
    redirect_to '/events'
  end

end