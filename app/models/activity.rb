class Activity < ApplicationRecord
  has_many :trips, through: :trip_activities

  validates :name, presence: true

  scope :tomorrow_activities, -> { where(date: Date.tomorrow) }
end
