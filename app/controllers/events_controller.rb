class EventsController < ApplicationController
  def show
    @event = Event.find(params[:id])
    @bookings = @event.bookings
    @bookings_summary = @event.bookings.group(:ticketagency_id).count()
  end

  #イベント一覧表示
  def index
    @events = Event.all
  end

  def create
  end

  def new
  end
end
