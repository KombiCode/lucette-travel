class ActivitiesController < ApplicationController
  before_action :find_activity, only: [:show]

  def index
    @planned_at = params[:planned_at]
    @localisation = params[:address]
    # @localisation_user = Trip.where(city: @trip, params[:planned_at]) # => recuper le lieu ou est le user
    # @date_user = @localisation_user(params[:planned_at])
    # return a localisation avec le date en params
    @activities = Activity.near(@localisation, 100)
    @markers = @activities.geocoded.map do |activity|
      {
        lat: activity.latitude,
        lng: activity.longitude
      }
    end
  end

  def show
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)
    if @activity.save
      redirect_to activities_path
    else
      render :new
    end
  end

  private

  def find_activity
    @activity = Activity.find(params[:id])
  end

  def activity_params
    params.require(:activity).permit(:name, :category, :description, :address)
  end
end
