class Trip < ApplicationRecord
  has_many :bookings
  has_many :trip_activities
  has_many :activities, through: :trip_activities
  has_many :tasks
  belongs_to :user

  scope :current_trip, -> { where("begin_date <= ?", Date.current).where("end_date >= ?", Date.current) }

  def today_activities
    trip_activities.today_activities
  end

  def day_activities(day_date)
    trip_activities.day_activities(day_date).order(start_hour: :asc)
  end

  def number_of_days
    nd = (end_date - begin_date).to_i
  end

  def date_for_day(index)
    begin_date + index
  end

  def day_bookings(index)
    day_bookings = bookings.select { |b|
      (date_for_day(index) >= b.begin_date.to_date) &&
      (date_for_day(index) <= b.end_date.to_date)
    }
  end

  def index_for_today()
    it = (Date.current - begin_date.to_date).to_i
  end
end
