namespace :fake_reservation do
  desc "create fake reservation"
  task :create => :environment do
    # Need to define which booking we will create here
    # Just an example for now
    Booking.create(
      category: "Plane",
      name: "KEF",
      begin_date: DateTime.new(2021,4,10,11,25,0),
      end_date: DateTime.new(2021,4,17,7,40,0),
      price: 546.99,
      address: "Lyon-Saint Exupéry Airport (LYS), Colombier-Saugnieu",
      trip: Trip.second,
      photo_title: "klm"
    )
  end
end
