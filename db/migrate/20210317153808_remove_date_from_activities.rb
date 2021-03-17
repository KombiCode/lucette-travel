class RemoveDateFromActivities < ActiveRecord::Migration[6.0]
  def change
    remove_column :activities, :date, :date
  end
end
