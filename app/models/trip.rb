class Trip < ApplicationRecord
  has_many :activities, through: :activities_trips
  has_many :bookings
  has_many :to_dos
end
