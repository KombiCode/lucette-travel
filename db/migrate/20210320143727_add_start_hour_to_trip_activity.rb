class AddStartHourToTripActivity < ActiveRecord::Migration[6.0]
  def change
    add_column :trip_activities, :start_hour, :interval
  end
end
