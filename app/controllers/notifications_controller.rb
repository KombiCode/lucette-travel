class NotificationsController < ApplicationController
  def hide_notif_empty_activities
    $hide_notif_empty_activities = true
  end
  def hide_notif_new_booking
    $hide_notif_new_booking = true
  end
end
