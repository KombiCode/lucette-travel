module ActivitiesHelper
  def show_opening_hours(opening_hours)
  soh = []  
  days_full = ['monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday']
  days_short = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
  visited_indexes = []
  days_full.each_with_index { |day, index|
    if !visited_indexes.include? index
      output_first = oh_output(opening_hours[day])
      output_next = ""
      day_prefix = "#{days_short[index]}"
      next_index = index + 1

      while next_index < 7 && !output_first.empty? && oh_output(opening_hours[days_full[next_index]]) == output_first
        day_prefix << ", #{days_short[next_index]}"
        visited_indexes << next_index
        next_index = next_index + 1
      end
      soh << "#{day_prefix} #{output_first}" unless output_first.empty?
    end
  }
  soh
  end

  def oh_output(day_oh)
    oh_output = ""
    if !day_oh.empty?
      morning = day_oh[0].nil? ? "" : "#{day_oh[0]['open']}-#{day_oh[0]['close']}"
      afternoon = day_oh[1].nil? ? "" : "#{day_oh[1]['open']}-#{day_oh[1]['close']}"
      oh_output = ": #{morning}  #{afternoon}"
      # special case for 00:00-23:59
      if (oh_output == ": 00:00-23:59  ")
        oh_output = ": 24/24"
      end
    end
    oh_output
  end

end
