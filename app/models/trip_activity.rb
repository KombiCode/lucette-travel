class TripActivity < ApplicationRecord
  belongs_to :trip
  belongs_to :activity

  scope :tomorrow_activities, -> { where(date: Date.tomorrow) }
end
