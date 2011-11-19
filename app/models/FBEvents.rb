require 'rubygems'
require 'json'
require "net/http"

class FBEvent 
  attr_accessor :url
  
  def initialize
    id = "https://www.facebook.com/events/242641089125639/".split("/").last 
    newurl = "http://graph.facebook.com/#{id}/"  
    @resp = Net::HTTP.get_response(URI.parse(newurl))
    @result = JSON.parse(@resp.body)
    event = Event.new(:eventID => getEventID, :latitude => getEventLatitude, :longitude => getEventLongitude, :name => getEventName, :description => getEventDescription);
    if event.save
      p "SAVED!!!!------"
    else
      p "FAILED"
    end
    out = "true"
  end
  def getJSON
    evJSON = @resp
  end
  def getEndTime
    evEnd = "#{@result["end_time"]}"
  end
  def getLastUpdate
    evLastUp = "#{@result["updated_time"]}"
  end
  def getOwnerID 
    evOwnID = "#{@result["owner"]["id"]}"
  end
  def getEventID
    evID = "#{@result["id"]}"
  end
  def getEventName 
    evName = "#{@result["name"]}"
  end 
  def getEventLocation  
    evLoc = "#{@result["location"]}"
  end
  def getEventLatitude
    evVen = @result["venue"]
    if evVen.nil?
      evLat = "No Latitude"
    else
      evLat = "#{@result["venue"]["latitude"]}"
    end
  end 
  def getEventLongitude 
    evVen = @result["venue"]
    if evVen.nil?
      evLong = "No Longitude"
    else
      evLong = "#{@result["venue"]["longitude"]}"
    end
  end
  def getEventDescription 
    evDes = @result["description"]
    if evDes.nil?
      evLong = "No Description"
    else
      evLong = "#{@result["description"]}"
    end
  end
end

