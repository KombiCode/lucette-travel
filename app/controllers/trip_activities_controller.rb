class TripActivitiesController < ApplicationController

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

end
