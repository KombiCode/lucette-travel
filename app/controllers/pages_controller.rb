class PagesController < ApplicationController
  before_action :hide_footer, only: [:home]

  def home

    @trips = Trip.all

    #
    # Below is stuff for 'fake notifications'
    # Do not remove
    #
    respond_to do |format|
      format.html
      # TODO put in the json info we need
      # For now just a test (not yet displayed anyway)

      last_booking_name = Booking.count == 0 ? "" : Booking.last.name
      ghost_activity = Activity.where("name = ?", 'ghost').where("category = ?", 'fake')
      notif_message = ""
      notif_type = "none"
      notif_data = ""

      if (last_booking_name == "Flight LYS - KEF")
        notif_message = "Your booking flight for upcoming Iceland trip has been added"
        notif_type = "newBooking"
        notif_data = last_booking_name
      elsif ghost_activity.any?
        notif_message = "You have no activities planned for tomorrow, pick up one !"
        notif_type = "emptyActivities"
        notif_data = ghost_activity.first.id
      end

      format.json { render json: {
        notifType: notif_type,
        notifMessage: notif_message,
        notifData: notif_data,
      }
    }
  end
    #
    # End of stuff for 'fake' notifications
    #

  end

  def index
    @trips = Trip.all
  end

end
