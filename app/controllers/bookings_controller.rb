class BookingsController < ApplicationController
  #before_action :set_booking, only: [:show]

  def index
    @trip = Trip.find(params[:trip_id])
    @all_bookings = Booking.where(trip: @trip)
    @todays_bookings = Booking.where(trip: @trip, begin_date: DateTime.current.to_date)
    # @todays_bookings = today_bookings(@trip)
  end

  def show
    @trip = Trip.find(params[:trip_id])
    @booking = Booking.find(params[:id])
  end

  def new
    @trip = Trip.find(params[:trip_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @trip = Trip.find(params[:trip_id])
    @booking.trip = @trip
    # if @booking.save
    #   redirect_to bookings_path
    # else
    #   render "new"
    # end
  end

  private

  # def set_booking
  #   @booking = Trip.find(params[:trip_id])
  # end

  def booking_params
    params.require(:booking).permit(:category, :name, :begin_date, :end_date, :price, :address)
  end
end
