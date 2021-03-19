class AddPhotoToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :photo_title, :string
  end
end
