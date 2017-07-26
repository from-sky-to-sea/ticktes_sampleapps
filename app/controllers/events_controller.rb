class EventsController < ApplicationController
  
  def show
  end

  def index
    @events = Event.all
  end
  
  def create
  end

  def new
  end
end
