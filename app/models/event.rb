require 'cgi'

class Event < ActiveRecord::Base
  acts_as_gmappable
  
  def gmaps4rails_address
      "#{self.latitude}, #{self.longitude}"
  end
  
  def gmaps4rails_infowindow
    "<div class='infowindow'>#{CGI.escapeHTML(self.name)})<br/></div>"
  end
  
  
end
