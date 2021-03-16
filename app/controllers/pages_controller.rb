class PagesController < ApplicationController

  def home
    @trips = Trip.all
  end

  def index
    @trips = Trip.all
  end

end
