class EventsController < ApplicationController
  def index
    @events = Event.order(updated_at: :desc).page params[:page]
  end

  def new
    @event = Event.new
    @event.starttime = Time.now.beginning_of_day
    @event.endtime = Time.now.beginning_of_day
  end

  def edit
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.new(event_params)
    @event.save

    if @event.save
      redirect_to action: 'index', notice: 'событие успешно создано'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @event = Event.find(params[:id])

    if @event.update(event_params)
      redirect_to action: 'index', flash: 'Событие успешно обновлено'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    redirect_to action: 'index', notice: 'Событие удалено'
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :location, :starttime, :endtime, :organizermail,
                                  :organizertelegram, :link)
  end
end
