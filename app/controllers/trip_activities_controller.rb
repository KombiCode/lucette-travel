class TripActivitiesController < ApplicationController
  before_action :set_trip, only: [:show, :new, :create]

  def show
  end

  def new

    @planned_at = params[:planned_at]
    @booking = @trip.bookings.find_by('begin_date <= :planned_at AND end_date >= :planned_at AND category = :category', planned_at: params[:planned_at], category: 'Hotel') || @trip.bookings.find_by(category: 'Hotel')
    @localisation = @booking&.address

    @tripActivity = TripActivity.new
    # @tripActivity.trip = @trip
     # <---- A mettre ?
    # ON DECIDE DE PÉTÉ SI Y A PAS DE RESERVATION CE JOUR LÀ
    @activities = Activity.near(@localisation, 15).where.not(id: @trip.activities.ids)

    @markers = @activities.geocoded.map do |activity|

        {
          id: activity.id,
          lat: activity.latitude,
          lng: activity.longitude,
          infoWindow: render_to_string(partial: "activities/activity_info_window", locals: { activity: activity }),
          image_url: helpers.asset_url('lucette-marker.svg')
        }

    end
  end

  def create

    # @tripActivity = TripActivity.create(activity_id: @activity ,trip_id: @trip, start_hour: ,date: )
    @tripActivity = TripActivity.new(trip_activity_params)
    @tripActivity.trip = @trip
    if @tripActivity.save
      redirect_to trip_path(@trip)
    else
      render :new
    end
  end

  private

  # def not_done(activities, trip)
  #   trip_activities = TripActivity.where(trip_id: trip)
  #   result = []
  #   trip_activities.each do |trip_activity|
  #     activities.each do |activity|
  #       if trip_activity.activity.id != activity.id
  #         result << activity
  #       end
  #     end
  #   result
  #   end
  # end

  def trip_activity_params
    params.require(:trip_activity).permit(:date, :start_hour, :activity_id, :trip_id)
  end

  def set_trip
    @trip = Trip.find(params[:trip_id])
  end
end
