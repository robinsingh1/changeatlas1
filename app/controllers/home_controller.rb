class HomeController < ApplicationController
  def index
    @locations = Event.all
    @json = Event.all.to_gmaps4rails
  end

end
