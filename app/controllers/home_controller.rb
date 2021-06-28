class HomeController < ApplicationController
  def index
    getEvents

  end




  private
  def getEvents
    @events = Event.all
  end
end





