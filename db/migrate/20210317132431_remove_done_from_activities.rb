class RemoveDoneFromActivities < ActiveRecord::Migration[6.0]
  def change
    remove_column :activities, :done
  end
end
