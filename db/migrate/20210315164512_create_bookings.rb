class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.string :category
      t.string :name
      t.datetime :begin_date
      t.datetime :end_date
      t.float :price
      t.string :address
      t.references :trip, null: false, foreign_key: true

      t.timestamps
    end
  end
end
