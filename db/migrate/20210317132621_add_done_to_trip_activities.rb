class AddDoneToTripActivities < ActiveRecord::Migration[6.0]
  def change
    add_column :trip_activities, :done, :boolean, default: false
  end
end
