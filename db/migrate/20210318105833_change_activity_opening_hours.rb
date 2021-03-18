class ChangeActivityOpeningHours < ActiveRecord::Migration[6.0]
  def up
    change_table :activities do |t|
      t.change :opening_hours, :json, using: 'opening_hours::JSON'
    end
  end

  def down
    change_table :activities do |t|
      t.change :opening_hours, :string
    end
  end
end
