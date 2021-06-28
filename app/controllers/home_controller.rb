class HomeController < ApplicationController
  #Here is the methods to bring all the registers in the tables to the Home Page
  def index
    getEvents
    getRegistrations
    getAwards
    getEventsParticipations
  end

  private
  def getEvents
    @events = Event.all
  end
  
  def getRegistrations
    @registrations = Registration.all
  end
  
  def getAwards
    @awards = Award.all
  end

  def getEventsParticipations
    @events_participations = EventsParticipation.all
  end

end





