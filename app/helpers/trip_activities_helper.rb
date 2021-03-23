module TripActivitiesHelper
    def show_start_hour(start_hour)
        ssh = "#{start_hour.to_time.strftime("%H:%M")}"
        ssh
    end
  end
  