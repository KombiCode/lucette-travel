class Trip < ApplicationRecord
  has_many :activities
  has_many :bookings
  has_many :to_dos
end
