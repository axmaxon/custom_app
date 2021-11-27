class EventsController < ApplicationController
  def index
    @events = Event.order(created_at: :desc).page params[:page]
  end

  def new
    @event = Event.new
    @event.starttime = Time.now.beginning_of_day
    @event.endtime = Time.now.beginning_of_day
  end

  def edit
  end

  def create
    @event = Event.new(event_params)
    @event.save

    if @event.save
      redirect_to action: 'index', notice: 'событие успешно создано'
    else
      render :new, status: 422
    end
  end

  def update
  end

  def destroy
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :location, :starttime, :endtime, :organizermail,
                                  :organizertelegram, :link)
  end
end
