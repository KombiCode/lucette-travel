class TripActivity < ApplicationRecord
  belongs_to :trip
  belongs_to :activity

  scope :today_activities, -> { where(date: Date.current) }
  scope :tomorrow_activities, -> { where(date: Date.tomorrow) }
end
