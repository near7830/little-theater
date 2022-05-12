class MessagesController < ApplicationController
  def index
    @message = Message.new
    @mainroom = Mainroom.find(params[:mainroom_id])
    @messages = @mainroom.messages.includes(:user)
    @events = Event.all
    @events = Mainroom.find(params[:mainroom_id]).events
  end

  def create
    @mainroom = Mainroom.find(params[:mainroom_id])
    @message = @mainroom.messages.new(message_params)
    if @message.save
      redirect_to mainroom_messages_path(@mainroom)
    else
      @messages = @mainroom.messages.includes(:user)
      render :index
    end
  end

  private

  def message_params
    params.require(:message).permit(:content, :image).merge(user_id: current_user.id)
  end
end
