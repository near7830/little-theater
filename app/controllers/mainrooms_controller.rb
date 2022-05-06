class MainroomsController < ApplicationController
  def new
    @mainroom = Mainroom.new
  end

  def create
    @mainroom = Mainroom.new(mainroom_params)
    if @mainroom.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def mainroom_params
    params.require(:mainroom).permit(:name, user_ids: [])
  end

end
