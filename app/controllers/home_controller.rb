class HomeController < ApplicationController
  def index
    @locations = Event.all
    @json = Event.all.to_gmaps4rails
    @markers = '[{"description": "", "title": "", "sidebar": "", "lng": "-79.381961", "lat": "43.652527", "picture": "rails.png", "width": "10px", "height": "10px"},
                {"lng": "-79.381961", "lat": "43.652527" }]'
  end

end
