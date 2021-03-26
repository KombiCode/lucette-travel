class PagesController < ApplicationController
  before_action :hide_footer, only: [:home]

  def home
    @trips = Trip.all
  end

  def index
    @trips = Trip.all
  end

end
