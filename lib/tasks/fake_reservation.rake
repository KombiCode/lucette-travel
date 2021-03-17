namespace :fake_reservation do
  desc "create fake reservation"
  task :create => :environment do
    Booking.create(name: 'lol', trip_id: Trip.first, category: 'lol')
  end
end
