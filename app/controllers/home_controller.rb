class HomeController < ApplicationController
  def index
    @locations = Event.all
    @json = Event.all.to_gmaps4rails
  end
  
  def events
    @event = Event.find_by_eventID(params[:eventID]).to_gmaps4rails
  end

end
