class CheckForActivityJob < ApplicationJob
  queue_as :default

  def perform(user)
    User.all.each do |user|
      EmptyActivitiesMailer.notify(user).deliver_later if !user.has_tomorrow_activities?
    end
  end
end
