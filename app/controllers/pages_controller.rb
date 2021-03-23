class PagesController < ApplicationController

  def home
    @trips = Trip.all
    respond_to do |format|
      format.html
      # TODO put in the json info we need
      # For now just a test (not yet displayed anyway)
      if (Booking.last.name == "KEF")
        format.json { render json: { newbooking: Booking.last.name } }
      elsif 
        format.json  { render json: { newbooking: "None"}  }    
      end
    end
    
  end

  def index
    @trips = Trip.all
  end

end
