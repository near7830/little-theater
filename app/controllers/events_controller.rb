class EventsController < ApplicationController
  def index
    @events = Event.all
    @mainroom = Mainroom.find(params[:mainroom_id])
    @events = @mainroom.events.includes(:user)
  end

  def new
    @event = Event.new
    @mainroom = Mainroom.find(params[:mainroom_id])
  end

  def create
    @mainroom = Mainroom.find(params[:mainroom_id])
    @event = @mainroom.events.new(event_params)
    if @event.save
      redirect_to mainroom_messages_path(@mainroom)
    else
      @events = @mainroom.event.includes(:user)
      render :index
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :content, :start_time).merge(user_id: current_user.id)
  end

end
