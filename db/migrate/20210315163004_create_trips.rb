class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.string :name
      t.string :country
      t.string :city
      t.date :begin_date
      t.date :end_date
      t.string :language
      t.string :devise

      t.timestamps
    end
  end
end
