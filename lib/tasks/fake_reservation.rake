namespace :fake_reservation do
  desc "create fake reservation"
  task :create => :environment do
    # Need to define which booking we will create here
    # Just an example for now
    # We create the flight booking for Iceland trip
    # (only if not yet created)
    booking_flight_lys_to_kef = Booking.where("name = ?", 'Flight LYS - KEF')
    iceland_trip = Trip.where("name = ?", 'Iceland')
    if (iceland_trip.any? && !booking_flight_lys_to_kef.any?)
      Booking.create(
        category: "Plane",
        name: "Flight LYS - KEF",
        begin_date: DateTime.new(2021,4,10,11,25,0),
        end_date: DateTime.new(2021,4,17,7,40,0),
        price: 546.99,
        address: "Lyon-Saint Exupéry Airport (LYS), Colombier-Saugnieu",
        trip: iceland_trip.first,
        photo_title: "klm"
      )
    end
  end
end
