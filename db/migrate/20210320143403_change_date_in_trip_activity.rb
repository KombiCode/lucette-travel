class ChangeDateInTripActivity < ActiveRecord::Migration[6.0]
  def up
    change_table :trip_activities do |t|
      t.change :date, :date
    end
  end

  def down
    change_table :trip_activities do |t|
      t.change :date, :datetime
    end
  end
end
