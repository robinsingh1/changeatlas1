require 'cgi'

class Event < ActiveRecord::Base
  acts_as_gmappable
  
  def gmaps4rails_address
      "#{self.latitude}, #{self.longitude}"
  end
  
  def gmaps4rails_infowindow
    "<div class='infowindow'>#{CGI.escapeHTML(self.name)})<br/><a href='http://www.facebook.com/events/#{self.eventID}'>Event Link</a><iframe height='20px' width='65px' frameborder='0' scrolling='no' allowtransparency='true' src='/home/sendIFrame?url=http://changeatlas.org/events/#{self.eventID}'></iframe></div>"
  end
  
  
end
