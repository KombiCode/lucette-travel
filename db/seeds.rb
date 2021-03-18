puts "Cleaning database"
TripActivity.destroy_all
Activity.destroy_all
Booking.destroy_all
Task.destroy_all
Trip.destroy_all
User.destroy_all

puts "Creating Users"

user1 = User.create(
  firstname: "Louis",
  lastname: "Dupont",
  phone: "0687676735",
  email: "louis@gmail.com",
  password: "azerty"
)

puts "#{User.count} users created"
puts "Creating trips"

trip1 = Trip.create(
  name: "Greece",
  country: "Greece",
  city: "Athens",
  begin_date: "24/03/2021",
  end_date: "02/04/2021",
  language: "Greek - English",
  devise: "€",
  user: user1
  )

trip2 = Trip.create(
  name: "Island",
  country: "Island",
  city: "Reykjavík",
  begin_date: "15/03/2020",
  end_date: "25/03/2021",
  language: "English",
  devise: "€",
  user: user1
  )

puts "#{Trip.count} trips created"

puts "Creating Tasks"

task1 = Task.create(
  name: "Visa",
  description: "Check if you need a visa",
  done: true,
  trip: trip1
  )

task2 = Task.create(
  name: "Passport",
  description: "Take it for both of us",
  done: true,
  trip: trip1
  )

task3 = Task.create(
  name: "Souvenirs",
  description: "Bring Back souvenirs",
  done: false,
  trip: trip1
  )

task4 = Task.create(
  name: "Bath suit",
  description: "Buy a bath suit for Paros",
  done: false,
  trip: trip1
  )

task5 = Task.create(
  name: "Luggage",
  description: "Smartphone charger, glasses, tablet, headphones",
  done: true,
  trip: trip1
  )

puts "#{Task.count} tasks created"
puts "Creating Activities"

def opened_or_close
  rand(0..1) == 1 ? [] : [{open: "09:00", close: "12:00"}, {open: "14:00", close: rand_afternoon_close}]
end

def rand_morning_open
  "0#{rand(7..9)}:#{['00', '15', '30', '45'].sample}"
end

def rand_afternoon_close
  "1#{rand(7..9)}:#{['00', '15', '30', '45'].sample}"
end

activity_opening_hours =
{
  monday: opened_or_close,
  tuesday: [
      {open: rand_morning_open, close: "12:00"},
      {open: "14:00", close: rand_afternoon_close}
  ],
  wednesday: opened_or_close,
  thursday: [
    {open: rand_morning_open, close: "12:00"},
    {open: "14:00", close: rand_afternoon_close}
  ],
  friday: [
    {open: rand_morning_open, close: "12:00"},
    {open: "14:00", close: rand_afternoon_close}
  ],
  saturday: [
    {open: rand_morning_open, close: "12:00"},
    {open: "14:00", close: rand_afternoon_close}
  ],
  sunday: [
    {open: rand_morning_open, close: "12:00"}
  ]
}

activity_categories = ["Points of interest & Lookouts",
  "Flea & Street Markets" "Beaches",
  "Museums",
  "Historic sites",
  "Neighborhoods",
  "Gardens",
  "Marinas",
  "Churches",
  "Wineyards"
]

activity_images = ["acropole.jpg", "lycabette.jpg", "olympion.jpg", "parthenon.jpg"]

100.times do
Activity.create(
  category: activity_categories.sample,
  name: Faker::Name.name,
  description: Faker::Movie.title,
  price: rand(4..150),
  duration: "0#{rand(0..4)}:#{[00, 15, 30, 45].sample}:00",
  opening_hours: activity_opening_hours,
  rating: rand(1..5),
  address: Faker::Address,
  photo_title: activity_images.sample
  )

end

puts "#{Activity.count} activities created"

puts "Creating bookings"

hotel1 = Booking.create(
  category: "Hotel",
  name: "B4B Athens Signature Hotel",
  begin_date: "24/03/2021",
  end_date: "26/03/2021",
  price: 152,
  address: " Theofilopoulou 18, Kallirois Avenue, 11743, Athenes, 11743, Greece",
  trip: trip1
  )

flat1 = Booking.create(
  category: "Flat",
  name: "Marcora's Historical Estate ",
  begin_date: "26/03/2021",
  end_date: "01/04/2021",
  price: 480,
  address: "Eparchiaki Odos Pontis-Messogis, Strongylí, 49084, Greece",
  trip: trip1
  )

hotel2 = Booking.create(
  category: "Hotel",
  name: "Acropolis View Hotel",
  begin_date: "01/04/2021",
  end_date: "02/04/2021",
  price: 74,
  address: "Webster 10 & Robertou Galli, Athenes, 11742, Greece",
  trip: trip1
  )

plane1 = Booking.create(
  category: "Plane",
  name: "KLM",
  begin_date: "24/03/2021, 11h50",
  end_date: "25/03/2021, 1h05",
  price: 263.40,
  address: "Lyon-Saint Exupéry Airport (LYS), Colombier-Saugnieu",
  trip: trip1
  )

plane2 = Booking.create(
  category: "Plane",
  name: "KLM",
  begin_date: "02/04/2021, 06h00",
  end_date: "02/04/2021, 10h55",
  price: 233.40,
  address: "Athenes Elefthérios-Venizélos International Airport (ATH), Attiki Odos, Spata-Artémis, Grèce",
  trip: trip1
  )

ferry1 = Booking.create(
  category: "Ferry",
  name: "Blue Star Ferries",
  begin_date: "26/03/2021, 17h30",
  end_date: "26/03/2021, 21h45",
  price: 60,
  address: "Port of Piraeus, Pirée, Greece",
  trip: trip1
  )

ferry2 = Booking.create(
  category: "Ferry",
  name: "Blue Star Ferries",
  begin_date: "01/04/2021, 10h45",
  end_date: "01/04/2021, 15h00",
  price: 65,
  address: "Paros 844 00, Greece",
  trip: trip1
  )

puts "#{Booking.count} bookings created"

trip2.activities << Activity.first
trip2.activities << Activity.last
trip1.activities << Activity.second

puts "Database ready"


# booking = Booking.where(user_id: User.find(8));

# thierry_activites = booking
#               .activities
#               .where(rating: 3..5)
#               .where(date: Date.current.beginning_of_month..Date.current.end_of_month)
#               where(number_of_people_max: 2)


# activities = current_user
#                 .activities
#                 .where(date: Date.current.beginning_of_month..Date.current.end_of_month)


# commun_activities = activities.pluck(:id) - thierry_activites.pluck(:id)

# commun_activities.each do |activity|
#   PushNotification.perform_later(activity)
# end




