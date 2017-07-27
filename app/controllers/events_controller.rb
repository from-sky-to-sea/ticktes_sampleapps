class EventsController < ApplicationController
  def show
    @event = Event.find(params[:id])
    @bookings = @event.bookings
    @agencies = Ticketagency.all
    # @bookings_summary = @event.bookings.group(:ticketagency_id).count()
  end

  #イベント一覧表示
  def index
    @events = Event.all
  end

  def create
    @event = Event.new(event_params)

    if @event.save
      flash[:success] = '公演情報が正常に投稿されました'
      redirect_to @event
    else
      flash.now[:danger] = '公演情報 が投稿されませんでした'
      render :new
    end
  end

  def new
    @event = Event.new
  end

  private

  # Strong Parameter
  def event_params
    params.require(:event).permit(:basename, :startdate, :enddate, :agencies, :availability)
  end

end
