class Activity < ApplicationRecord
  has_many :trip_activities

  validates :name, presence: true
  validates :category, presence: true
  validates :duration, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def valid_rating
    vr = rating
    if vr < 0
      vr = 0
    elsif vr > 5
      vr = 5
    end
    vr
  end

  def is_open_tomorrow?
    day_names = ['monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday']
    tomorrow_week_day = Date.current.cwday + 1
    if tomorrow_week_day > 7
      tomorrow_week_day = 1
    end
    opened = !opening_hours[day_names[tomorrow_week_day-1]].empty?
  end

  def is_open(datetime)
    day_names = ['monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday']
    week_day = datetime.cwday
    open = false
    oh = opening_hours[day_names[week_day-1]]
    if !oh.empty?
      if !oh[0].nil? && !oh[1].nil?
        ftime_now = datetime.to_time.strftime("%H%M")
        ftime_mop = oh[0]['open'].to_time.strftime("%H%M")
        ftime_mcl = oh[0]['close'].to_time.strftime("%H%M")
        ftime_aop = oh[1]['open'].to_time.strftime("%H%M")
        ftime_acl = oh[1]['close'].to_time.strftime("%H%M")
        if (ftime_now >= ftime_mop && ftime_now <= ftime_mcl) ||
          (ftime_now >= ftime_aop && ftime_now <= ftime_acl)
          open = true
        end
      elsif !oh[0].nil?
        ftime_now = datetime.to_time.strftime("%H%M")
        ftime_op = oh[0]['open'].to_time.strftime("%H%M")
        ftime_cl = oh[0]['close'].to_time.strftime("%H%M")
        if (ftime_now >= ftime_op && ftime_now <= ftime_cl)
          open = true
        end
      end
    end
    open
  end
end
