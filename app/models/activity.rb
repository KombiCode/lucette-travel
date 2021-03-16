class Activity < ApplicationRecord
  has_many :trips, through: :activities_trips
end
