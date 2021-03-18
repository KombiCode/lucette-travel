class Activity < ApplicationRecord
  has_many :trips, through: :trip_activities

  validates :name, presence: true


  def is_open_tomorrow?
    day_names = ['monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday']
    tomorrow_week_day = Date.current.cwday + 1
    opened = !opening_hours[day_names[tomorrow_week_day-1]].empty?
  end

  def is_open(datetime)
    day_names = ['monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday']
    week_day = datetime.cwday
    open = false
    oh = opening_hours[day_names[week_day-1]]
    if !oh.empty?
      ftime_now = datetime.to_time.strftime("%H%M")
      ftime_mop = oh[0]['open'].to_time.strftime("%H%M")
      ftime_mcl = oh[0]['close'].to_time.strftime("%H%M")
      ftime_aop = oh[1]['open'].to_time.strftime("%H%M")
      ftime_acl = oh[1]['close'].to_time.strftime("%H%M")
      if (ftime_now >= ftime_mop && ftime_now <= ftime_mcl) ||
         (ftime_now >= ftime_aop && ftime_now <= ftime_acl)
         open = true
      end
    end
    open
  end
end
