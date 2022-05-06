class MainroomsController < ApplicationController
  def new
    @mainroom = Mainroom.new
  end
end
