class AddDateTimeAndDonetoTripActivities < ActiveRecord::Migration[6.0]
  def change
    add_column :trip_activities, :date, :datetime
  end
end
