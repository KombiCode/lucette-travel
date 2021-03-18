module ActivitiesHelper
  def show_opening_hours(opening_hours)
  soh = []  
  days_full = ['monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday']
  days_short = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
  days_full.each_with_index { |day, index|
    day_oh = opening_hours[day]
    if !day_oh.empty?
      morning = day_oh[0].nil? ? "" : "#{day_oh[0]['open']}-#{day_oh[0]['close']}"
      afternoon = day_oh[1].nil? ? "" : "#{day_oh[1]['open']}-#{day_oh[1]['close']}"
      soh << "#{days_short[index]}: #{morning}   #{afternoon}"
    end
  }
  soh
  end
end
