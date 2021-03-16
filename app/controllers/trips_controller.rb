class TripsController < ApplicationController

  def index
    @trip = Trip.find(params[:id])
  end

  def show
    @trips = Trip.all
  end

end
