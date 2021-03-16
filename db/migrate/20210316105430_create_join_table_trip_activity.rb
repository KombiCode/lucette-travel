class CreateJoinTableTripActivity < ActiveRecord::Migration[6.0]
  def change
    create_join_table :trips, :activities do |t|
      # t.index [:trip_id, :activity_id]
      # t.index [:activity_id, :trip_id]
    end
  end
end
