class TripsController < ApplicationController
  before_action :authenticate_user!, only: [:new]
  before_action :find_trip, only: [:show]

  def index
    @trips = Trip.all
  end

  def show
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
    @trip.user_id = current_user.id
    if @trip.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def find_trip
    @trip = Trip.find(params[:id])
  end

  def trip_params
    params.require(:trip).permit(:name, :country, :city, :begin_date, :end_date, :language, :devise, :description, :photo_title)
  end
end
