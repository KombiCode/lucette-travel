class PagesController < ApplicationController

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

      @last_booking_name = Booking.count == 0 ? "" : Booking.last.name
      @ghost_activity = Activity.where("name = ?", 'ghost').where("category = ?", 'fake')

      if (@last_booking_name == "Flight LYS - KEF to store")
        format.json { render json: {
                        notifType: 'newBooking',
                        newBooking: @last_booking_name,
                        notifMessage: 'Your booking flight for upcoming Iceland trip has been added'
                      }
                    }
      elsif @ghost_activity.any?
        format.json { render json: {
                        notifType: 'emptyActivities',
                        notifMessage: "You have no activities planned for tomorrow, pick up one !"
                      }
                    }
      else
        format.json { render json: {
                        notifType: 'none',
                        notifMessage: ""
                      }
                    }
      end
    end
    #
    # End of stuff for 'fake' notifications
    #
    
  end

  def index
    @trips = Trip.all
  end

end
