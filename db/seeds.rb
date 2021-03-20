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

# Do not remove : this is user admin
User.create(
  firstname: "Admin",
  lastname: "Admin",
  phone: "0707070707",
  email: "admin@gmail.com",
  password: "lucette",
  admin: true
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
  begin_date: "15/03/2021",
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



# def close
#   rand(0..1) == 1 ? [] : [{open: "09:00", close: "12:00"}, {open: "14:00", close: rand_afternoon_close}]
# end

# def rand_morning_open
#   "0#{rand(7..9)}:#{['00', '15', '30', '45'].sample}"
# end

# def rand_afternoon_close
#   "1#{rand(7..9)}:#{['00', '15', '30', '45'].sample}"
# end

# activity_opening_hours =
# {
#   monday: opened_or_close,
#   tuesday: [
#       {open: rand_morning_open, close: "12:00"},
#       {open: "14:00", close: rand_afternoon_close}
#   ],
#   wednesday: opened_or_close,
#   thursday: [
#     {open: rand_morning_open, close: "12:00"},
#     {open: "14:00", close: rand_afternoon_close}
#   ],
#   friday: [
#     {open: rand_morning_open, close: "12:00"},
#     {open: "14:00", close: rand_afternoon_close}
#   ],
#   saturday: [
#     {open: rand_morning_open, close: "12:00"},
#     {open: "14:00", close: rand_afternoon_close}
#   ],
#   sunday: [
#     {open: rand_morning_open, close: "12:00"}
#   ]
# }

activity_categories = ["Points of interest & Lookouts",
  "Flea & Street Markets",
  "Beaches",
  "Museums",
  "Historic sites",
  "Neighborhoods",
  "Parks & Gardens",
  "Marinas",
  "Churches",
  "Wineyards"
]

# activity_images = ["acropole", "lycabette", "olympion", "parthenon"]
# # image_loaded = File.open("app/assets/images/acropole.jpg")
# activity_addresses = ["4 Neofytou Douka str., Athens 106 74 Greece",
#   "Mount Lycabettus, Athens 114 71, Greece",
#   "28is Oktovriou 44, Athina 106 82, Greece",
#   "Vassileos Konstantinou Avenue opposite the statue of Myron Discobolus, Athens 116 35 Greece",
#   "Theofilopoulou 18, Kallirois Avenue, 11743, Athenes, 11743, Greece",
#   "Eparchiaki Odos Pontis-Messogis, Strongylí, 49084, Greece",
#   "Webster 10 & Robertou Galli, Athenes, 11742, Greece"
# ]

puts "Creating Activities"

trip1.activities = []

# 2.times do
# activity = Activity.create(
#   category: activity_categories.sample,
#   name: Faker::Name.name,
#   description: Faker::Movie.title,
#   price: rand(4..150),
#   duration: "0#{rand(0..4)}:#{[00, 15, 30, 45].sample}:00",
#   opening_hours: activity_opening_hours,
#   rating: rand(1..5),
#   address: activity_addresses.sample,
#   photo_title: activity_images.sample
# )
# end

activity1 = Activity.create(
  category: "Historic site",
  name: "Parthenon",
  description: "The majestic ruins of an ancient Greek building, known for its dignified white marble columns and perfect sense of proportion.",
  duration: "04:30",
  opening_hours: {
    monday: [{open: "08:00", close: "20:00"}],
    tuesday: [{open: "08:00", close: "20:00"}],
    wednesday: [{open: "08:00", close: "20:00"}],
    thursday: [{open: "08:00", close: "20:00"}],
    friday: [{open: "08:00", close: "20:00"}],
    saturday: [{open: "08:00", close: "20:00"}],
    sunday: [{open: "08:00", close: "20:00"}]
  },
  price: 0,
  rating: 4.5,
  address: "Acropolis Top of Dionyssiou Areopagitou, Athens 105 58 Greece",
  photo_title: "parthenon"
    )

trip1.activities << activity1

activity2 = Activity.create(
  category: "Historic site",
  name: "The Acropolis",
  description: "The most famous site in all of Athens, this large hill lies in the center of the city and contains a cluster of ancient ruins.",
  duration: "02:00",
  opening_hours: {
    monday: [{open: "00:00", close: "23:59"}],
    tuesday: [{open: "00:00", close: "23:59"}],
    wednesday: [{open: "00:00", close: "23:59"}],
    thursday: [{open: "00:00", close: "23:59"}],
    friday: [{open: "00:00", close: "23:59"}],
    saturday: [{open: "00:00", close: "23:59"}],
    sunday: [{open: "00:00", close: "23:59"}]
  },
  price: 13,
  rating: 4.5,
  address: "via Dionysiou Areopagitou str., Athens 105 58 Greece",
  photo_title: "acropole"
    )


trip1.activities << activity2

activity3 = Activity.create(
  category: "Museum",
  name: "The Acropolis",
   description: "Modern, uptodate building on the foot of the Acropolis housing important ancient Greek statues and much more.",
   duration: "02:00",
  opening_hours: {
    monday: [{open: "00:00", close: "23:59"}],
    tuesday: [{open: "00:00", close: "23:59"}],
    wednesday: [{open: "00:00", close: "23:59"}],
    thursday: [{open: "00:00", close: "23:59"}],
    friday: [{open: "00:00", close: "23:59"}],
    saturday: [{open: "00:00", close: "23:59"}],
    sunday: [{open: "00:00", close: "23:59"}]
  },
  price: 13,
  rating: 4.5,
  address: "via Dionysiou Areopagitou str., Athens 105 58 Greece",
  photo_title: "acropole"
    )


trip1.activities << activity3

activity4 = Activity.create(
  category: "Museum",
  name: "Acropolis Museum",
   description: "Modern, uptodate building on the foot of the Acropolis housing important ancient Greek statues and much more.",
   duration: "02:00",
  opening_hours: {
    monday: [{open: "00:00", close: "23:59"}],
    tuesday: [{open: "00:00", close: "23:59"}],
    wednesday: [{open: "00:00", close: "23:59"}],
    thursday: [{open: "00:00", close: "23:59"}],
    friday: [{open: "00:00", close: "23:59"}],
    saturday: [{open: "00:00", close: "23:59"}],
    sunday: [{open: "00:00", close: "23:59"}]
  },
  price: 7.50,
  rating: 4.5,
  address: "Dionysiou Areopagitou 15, Athens 117 42 Greece",
  photo_title: "acropolismuseum"
    )


trip1.activities << activity4

activity5 = Activity.create(
  category: "Museum",
  name: "Museum of Cycladic Art",
  description: "A dynamic cultural institution in the centre of Athens, the Museum of Cycladic Art focuses on promoting the ancient cultures of the Aegean and Cyprus, with particular emphasis on Cycladic art of the third millennium BC. The Museum’s permanent collections include 3000 Cycladic, ancient Greek, and ancient Cypriot artefacts, witnesses to the cultures that flourished in the Aegean and the Eastern Mediterranean from the fourth millennium BC to approximately the sixth century AD. The Museum of Cycladic Art’s temporary exhibitions focus on archaeology and modern and contemporary art with the aim to familiarize the public with important twentieth and twenty-first century artists and to explore the relations between ancient cultures and modern art. Salvador Dali, Pablo Picasso, Thomas Struth, Louise Bourgeois, Sarah Lucas, Ugo Rondinone, Jannis Kounellis, Mario Merz, Ai Weiwei, and Cy Twombly are among the artists hosted.",
   duration: "01:30",
  opening_hours: {
    monday: [{open: "10:00", close: "17:00"}],
    tuesday: [],
    wednesday: [{open: "10:00", close: "17:00"}],
    thursday: [{open: "00:00", close: "23:59"}],
    friday: [],
    saturday: [{open: "10:00", close: "17:00"}],
    sunday: [{open: "11:00", close: "17:00"}]
  },
  price: 7,
  rating: 4,
  address: "4 Neofytou Douka str., Athens 106 74 Greece",
  photo_title: "cycladicmuseum"
    )

trip1.activities << activity5

activity6 = Activity.create(
  category: "Neighbourhood",
  name: "Monastiraki Neighbourhood",
  description: "Lively flea market neighborhood with lots of small tavernas serving good-value local snacks.",
   duration: "02:30",
  opening_hours: {
    monday: [{open: "00:00", close: "23:59"}],
    tuesday: [{open: "00:00", close: "23:59"}],
    wednesday: [{open: "00:00", close: "23:59"}],
    thursday: [{open: "00:00", close: "23:59"}],
    friday: [{open: "00:00", close: "23:59"}],
    saturday: [{open: "00:00", close: "23:59"}],
    sunday: [{open: "00:00", close: "23:59"}]
  },
  price: 0,
  rating: 4,
  address: "Monastikari Square",
  photo_title: "monastikari"
    )

trip1.activities << activity6

activity7 = Activity.create(
  category: "Points of interest & Lookouts",
  name: "Lycabettus Hill",
  description: "Walk or take the funicular tramway to the top of this hill for the best views of Athens",
   duration: "01:30",
  opening_hours: {
    monday: [{open: "00:00", close: "23:59"}],
    tuesday: [{open: "00:00", close: "23:59"}],
    wednesday: [{open: "00:00", close: "23:59"}],
    thursday: [{open: "00:00", close: "23:59"}],
    friday: [{open: "00:00", close: "23:59"}],
    saturday: [{open: "00:00", close: "23:59"}],
    sunday: [{open: "00:00", close: "23:59"}]
  },
  price: 0,
  rating: 4.5,
  address: "Mount Lycabettus, Athens 114 71, Greece",
  photo_title: "lycabette"
    )

trip1.activities << activity7

activity8 = Activity.create(
  category: "Neighbourhood",
  name: "Plaka Neighbourhood",
  description: "Historic neighborhood located at the base of the hill topped by the Acropolis.",
  duration: "02:30",
  opening_hours: {
    monday: [{open: "00:00", close: "23:59"}],
    tuesday: [{open: "00:00", close: "23:59"}],
    wednesday: [{open: "00:00", close: "23:59"}],
    thursday: [{open: "00:00", close: "23:59"}],
    friday: [{open: "00:00", close: "23:59"}],
    saturday: [{open: "00:00", close: "23:59"}],
    sunday: [{open: "00:00", close: "23:59"}]
  },
  price: 0,
  rating: 4.5,
  address: "Plaka, Athens, Greece",
  photo_title: "plaka"
    )

trip1.activities << activity8

activity9 = Activity.create(
  category: "Museum",
  name: "National Archaeological Museum",
  description: "The National Archaeological Museum in Athens houses some of the most important artifacts from a variety of archaeological locations around Greece from prehistory to late antiquity. It is considered one of the greatest museums in the world and contains the richest collection of artifacts from Greek antiquity worldwide.",
  duration: "02:30",
  opening_hours: {
    monday: [{open: "08:00", close: "20:00"}],
    tuesday: [{open: "13:00", close: "20:00"}],
    wednesday: [{open: "08:00", close: "20:00"}],
    thursday: [{open: "08:00", close: "20:00"}],
    friday: [{open: "08:00", close: "20:00"}],
    saturday: [{open: "08:00", close: "20:00"}],
    sunday: [{open: "08:00", close: "20:00"}]
  },
  price: 12,
  rating: 4.5,
  address: "8is Oktovriou 44, Athina 106 82, Greece",
  photo_title: "archaeologicalmuseum"
    )

trip1.activities << activity9

activity10 = Activity.create(
  category: "Historic sites",
  name: "Panathenaic Stadium",
  description: "The Old Olympic Stadium in Athens Greece, built of granite in late 19th century on the site of ancient Athens from the 4th Century; hosted the first modern games in 1896.",
  duration: "01:00",
  opening_hours: {
    monday: [{open: "08:00", close: "19:00"}],
    tuesday: [{open: "08:00", close: "19:00"}],
    wednesday: [{open: "08:00", close: "19:00"}],
    thursday: [{open: "08:00", close: "19:00"}],
    friday: [{open: "08:00", close: "19:00"}],
    saturday: [{open: "08:00", close: "19:00"}],
    sunday: [{open: "08:00", close: "19:00"}],
  },
  price: 0,
  rating: 4.5,
  address: "Vassileos Konstantinou Avenue opposite the statue of Myron Discobolus, Athens 116 35 Greece",
  photo_title: "panathenaic"
    )

trip1.activities << activity10

activity11 = Activity.create(
  category: "Historic sites",
  name: "Herod Atticus Odeon",
  description: "Second-century theater built into the hillside.",
  duration: "00:30",
 opening_hours: {
    monday: [{open: "00:00", close: "23:59"}],
    tuesday: [{open: "00:00", close: "23:59"}],
    wednesday: [{open: "00:00", close: "23:59"}],
    thursday: [{open: "00:00", close: "23:59"}],
    friday: [{open: "00:00", close: "23:59"}],
    saturday: [{open: "00:00", close: "23:59"}],
    sunday: [{open: "00:00", close: "23:59"}]
  },
  price: 0,
  rating: 4.5,
  address: "Dionissiou Areopagitou, Athens Greece",
  photo_title: "herodatticus"
    )

trip1.activities << activity11

activity12 = Activity.create(
  category: "Parks & Gardens",
  name: "Philopappos Hill",
  description: "This hill is a favorite for weekending Athenians who come here to picnic and admire the breathaking views.",
  duration: "01:30",
 opening_hours: {
    monday: [{open: "00:00", close: "23:59"}],
    tuesday: [{open: "00:00", close: "23:59"}],
    wednesday: [{open: "00:00", close: "23:59"}],
    thursday: [{open: "00:00", close: "23:59"}],
    friday: [{open: "00:00", close: "23:59"}],
    saturday: [{open: "00:00", close: "23:59"}],
    sunday: [{open: "00:00", close: "23:59"}]
  },
  price: 0,
  rating: 4.5,
  address: "Athens 105 55 Greece",
  photo_title: "philopappos"
    )

trip1.activities << activity12

activity13 = Activity.create(
  category: "Historic sites",
  name: "Temple of Hephaestus",
  description: "This ancient Greek temple, located on the Acropolis and dedicated to Hephaistos, god of the forge, is one of the few temples to be almost entirely preserved.",
  duration: "01:00",
 opening_hours: {
    monday: [{open: "00:00", close: "23:59"}],
    tuesday: [{open: "00:00", close: "23:59"}],
    wednesday: [{open: "00:00", close: "23:59"}],
    thursday: [{open: "00:00", close: "23:59"}],
    friday: [{open: "00:00", close: "23:59"}],
    saturday: [{open: "00:00", close: "23:59"}],
    sunday: [{open: "00:00", close: "23:59"}]
  },
  price: 0,
  rating: 4.5,
  address: "A24 Adrianou St. Ancient Agora of Athens, Athens 105 55 Greece",
  photo_title: "hephaestus"
    )

trip1.activities << activity13

activity14 = Activity.create(
  category: "Parks & Gardens",
  name: "National Garden",
  description: "This beautiful oasis offers a soothing respite of greenery from the big city with many benches for picnicking, cafes, duck ponds and a small zoo.",
  duration: "01:30",
 opening_hours: {
    monday: [{open: "06:00", close: "19:30"}],
    tuesday: [{open: "06:00", close: "19:30"}],
    wednesday: [{open: "06:00", close: "19:30"}],
    thursday: [{open: "06:00", close: "19:30"}],
    friday: [{open: "06:00", close: "19:30"}],
    saturday: [{open: "06:00", close: "19:30"}],
    sunday: [{open: "06:00", close: "19:30"}],
  },
  price: 0,
  rating: 4,
  address: "Leoforos Amalias 1, Athens 10557 Greece",
  photo_title: "nationalgarden"
    )

trip1.activities << activity14

activity15 = Activity.create(
  category: "Flea & Street Markets",
  name: "Central Municipal Athens Market",
  description: "Large public market for meat & produce",
  duration: "01:00",
 opening_hours: {
    monday: [{open: "07:00", close: "18:30"}],
    tuesday: [{open: "07:00", close: "18:30"}],
    wednesday: [{open: "07:00", close: "18:30"}],
    thursday: [{open: "07:00", close: "18:30"}],
    friday: [{open: "07:00", close: "18:30"}],
    saturday: [{open: "07:00", close: "18:30"}],
    sunday: [],
  },
  price: 0,
  rating: 4,
  address: "Athinas, Athina 105 51, Greece",
  photo_title: "marketmunicipal"
    )

trip1.activities << activity15

 # "Aeropagus","Theatre of Dionysus", "Kapnikarea", "Byzantine and Christian Museum", "Philopappos Monument", Odeon of Herodes Atticus", "Temple of Olympian Zeus", "Temple of Athena Nike", "Temple of Hephaestus", "Erechtheion", "The National Museum of Contemporary Art in Athens", "Temple of Poseidon", "Varvakios Agora",

puts "#{Activity.count} activities created"
puts "#{trip1.activities.count} activities assigned to trip1"
puts "#{trip2.activities.count} activities assigned to trip2"
no_assigned = Activity.count - trip1.activities.count - trip2.activities.count
puts "#{no_assigned} activities not assigned to any trip"


puts "Creating bookings"


hotel1 = Booking.create(
  category: "Hotel",
  name: "B4B Athens Signature Hotel",
  begin_date: "24/03/2021",
  end_date: "26/03/2021",
  price: 152,
  address: " Theofilopoulou 18, Kallirois Avenue, 11743, Athenes, 11743, Greece",
  trip: trip1,
  photo_title: "hotelathens"
  )

flat1 = Booking.create(
  category: "Flat",
  name: "Marcora's Historical Estate ",
  begin_date: "26/03/2021",
  end_date: "01/04/2021",
  price: 480,
  address: "Eparchiaki Odos Pontis-Messogis, Strongylí, 49084, Greece",
  trip: trip1,
  photo_title: "hotelathens"
  )

hotel2 = Booking.create(
  category: "Hotel",
  name: "Acropolis View Hotel",
  begin_date: "01/04/2021",
  end_date: "02/04/2021",
  price: 74,
  address: "Webster 10 & Robertou Galli, Athenes, 11742, Greece",
  trip: trip1,
  photo_title: "hotelathens"
  )

plane1 = Booking.create(
  category: "Plane",
  name: "KLM",
  begin_date: "24/03/2021, 11h50",
  end_date: "25/03/2021, 1h05",
  price: 263.40,
  address: "Lyon-Saint Exupéry Airport (LYS), Colombier-Saugnieu",
  trip: trip1,
  photo_title: "klm"
  )

plane2 = Booking.create(
  category: "Plane",
  name: "KLM",
  begin_date: "02/04/2021, 06h00",
  end_date: "02/04/2021, 10h55",
  price: 233.40,
  address: "Athenes Elefthérios-Venizélos International Airport (ATH), Attiki Odos, Spata-Artémis, Grèce",
  trip: trip1,
  photo_title: "klm"
  )

ferry1 = Booking.create(
  category: "Ferry",
  name: "Blue Star Ferries",
  begin_date: "26/03/2021, 17h30",
  end_date: "26/03/2021, 21h45",
  price: 60,
  address: "Port of Piraeus, Pirée, Greece",
  trip: trip1,
  photo_title: "klm"
  )

ferry2 = Booking.create(
  category: "Ferry",
  name: "Blue Star Ferries",
  begin_date: "01/04/2021, 10h45",
  end_date: "01/04/2021, 15h00",
  price: 65,
  address: "Paros 844 00, Greece",
  trip: trip1,
  photo_title: "klm"
  )

puts "#{Booking.count} bookings created"

trip2.activities << Activity.first
trip2.activities << Activity.last


puts "Database ready"
