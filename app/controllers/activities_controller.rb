class ActivitiesController < ApplicationController
  def index
    puts "In index"
    @activities = Activity.all
  end

  def show
    puts "In show"
    @activity = Activity.find(params[:id])
  end

  def new
    puts "In new"
  end

  def create
    puts "In create"
  end
end
