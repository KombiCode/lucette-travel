class AddDurationAndOpeningHoursToActivities < ActiveRecord::Migration[6.0]
  def change
    add_column :activities, :duration, :string
    add_column :activities, :opening_hours, :string
  end
end
