class ChangeActivityDuration < ActiveRecord::Migration[6.0]
  def up
    change_table :activities do |t|
      t.change :duration, :interval, using: 'duration::interval'
    end
  end

  def down
    change_table :activities do |t|
      t.change :duration, :string
    end
  end
end
