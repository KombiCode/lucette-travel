class TripActivitiesController < ApplicationController
  before_action :set_trip, only: [:new, :create]

  def new
    ap "je suis dans #{__method__}"
    @planned_at = params[:planned_at]
    @booking = @trip.bookings.find_by(begin_date: params[:planned_at], category: 'Hotel')
    @localisation = @booking&.address

    # ON DECIDE DE PÉTÉ SI Y A PAS DE RESERVATION CE JOUR LÀ
    @activities = Activity.near(@localisation, 100)
    @markers = @activities.geocoded.map do |activity|
      {
        lat: activity.latitude,
        lng: activity.longitude,
        infoWindow: render_to_string(partial: "activities/activity_info_window", locals: { activity: activity }),
        image_url: helpers.asset_url('local_activity.png')
      }
    end
  end

  def create
    @TripActivity = TripActivity.create(trip_activity_params)
    if @TripActivity.save
      redirect_to activities_path
    else
      render :new
    end
  end

  private

  def trip_activity_params
    params.require(:tripActivity).permit(:date, :start_hour)
  end

  def set_trip
    @trip = Trip.find(params[:trip_id])
  end
end
