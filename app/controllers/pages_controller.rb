class PagesController < ApplicationController

  def home
    @trips = Trip.all
    respond_to do |format|
      format.html
      # TODO put in the json info we need
      # For now just a test (not yet displayed anyway)
      format.json { render json: { bookings: Booking.all } }
    end
    
  end

  def index
    @trips = Trip.all
  end

end
