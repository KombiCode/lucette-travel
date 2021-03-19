class AddIndexForGeocoderToActivities < ActiveRecord::Migration[6.0]
  def change
    add_index :activities, [:latitude, :longitude]
  end
end
