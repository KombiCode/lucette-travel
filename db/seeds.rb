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
  begin_date: Date.current - 1,
  end_date: Date.current + 8,
  language: "Greek - English",
  devise: "€",
  user: user1,
  photo_title: "greece",
  description: ""
  )

trip2 = Trip.create(
  name: "Iceland",
  country: "Iceland",
  city: "Reykjavík",
  begin_date: Date.new(2021, 4, 8),
  end_date: Date.new(2021, 4, 25),
  language: "English",
  devise: "€",
  user: user1,
  photo_title: "iceland",
  description: ""
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
  description: "Take passport for both of us",
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



puts "Creating Activities"

trip1.activities = []

athenes1 = Activity.create(
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
  rating: 4,
  address: "Acropolis Top of Dionyssiou Areopagitou, Athens 105 58 Greece",
  photo_title: "parthenon"
    )

TripActivity.create(
  trip_id: trip1.id,
  activity_id: athenes1.id,
  date: Date.current - 1,
  start_hour: "10:00"
)

athenes2 = Activity.create(
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
  rating: 5,
  address: "via Dionysiou Areopagitou str., Athens 105 58 Greece",
  photo_title: "acropole"
  )

TripActivity.create(
  trip_id: trip1.id,
  activity_id: athenes2.id,
  date: Date.current,
  start_hour: "13:00"
)

athenes3 = Activity.create(
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

TripActivity.create(
  trip_id: trip1.id,
  activity_id: athenes3.id,
  date: Date.current,
  start_hour: "16:00"
)

athenes4 = Activity.create(
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
  rating: 4,
  address: "Dionysiou Areopagitou 15, Athens 117 42 Greece",
  photo_title: "acropolismuseum"
    )

TripActivity.create(
  trip_id: trip1.id,
  activity_id: athenes4.id,
  date: Date.current + 1,
  start_hour: "11:00"
)

athenes5 = Activity.create(
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

TripActivity.create(
  trip_id: trip1.id,
  activity_id: athenes5.id,
  date: Date.current + 1,
  start_hour: "14:00"
)

athenes6 = Activity.create(
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
  rating: 3,
  address: "Monastikari Square",
  photo_title: "monastikari"
    )

TripActivity.create(
  trip_id: trip1.id,
  activity_id: athenes6.id,
  date: Date.current + 1,
  start_hour: "16:30"
)

athenes7 = Activity.create(
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
  rating: 3,
  address: "Mount Lycabettus, Athens 114 71, Greece",
  photo_title: "lycabette"
    )

TripActivity.create(
  trip_id: trip1.id,
  activity_id: athenes7.id,
  date: Date.current + 2,
  start_hour: "09:00"
)

athenes8 = Activity.create(
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
  rating: 4,
  address: "Plaka, Athens, Greece",
  photo_title: "plaka"
    )

TripActivity.create(
  trip_id: trip1.id,
  activity_id: athenes8.id,
  date: Date.current + 2,
  start_hour: "12:00"
)

athenes9 = Activity.create(
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
  rating: 3,
  address: "8is Oktovriou 44, Athina 106 82, Greece",
  photo_title: "archaeologicalmuseum"
    )

TripActivity.create(
  trip_id: trip1.id,
  activity_id: athenes9.id,
  date: Date.current + 2,
  start_hour: "16:00"
)

athenes10 = Activity.create(
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

athenes11 = Activity.create(
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


athenes12 = Activity.create(
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


athenes13 = Activity.create(
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

athenes14 = Activity.create(
  category: "Neighbourhood",
  name: "Psirri",
  description: "Vibrant Psyrri centers on Iroon Square, whose surrounding streets have eateries offering meze and live music, including rembetika (Greek blues). Bars with DJs stay open late, as do tavernas serving traditional specialties like meatballs and Greek salad. Small artisan shops, often decorated with graffiti, sell handmade leather bags, indie fashions and offbeat homewares.",
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
  rating: 4,
  address: "Psirri, Athina 105 54, Greece, Athens",
  photo_title: "psirri"
  )

athenes15 = Activity.create(
  category: "Historic sites",
  name: "Temple of Olympian Zeus",
  description: "A can't-miss on two counts: it's a marvellous temple, once the largest in Greece, and it's smack in the centre of Athens. Of the temple's 104 original Corinthian columns (17m high with a base diameter of 1.7m), only 15 remain – the fallen column was blown down in a gale in 1852.
Begun in the 6th century BC by Peisistratos, the temple was abandoned for lack of funds. Various other leaders took a stab at completing it, but it was left to Hadrian to finish the job in AD 131, thus taking more than 700 years in total to build. In typically immodest fashion, Hadrian built not just a colossal statue of Zeus, but an equally large one of himself.",
  duration: "01:00",
  opening_hours: {
    monday: [{open: "08:00", close: "20:00"}],
    tuesday: [{open: "08:00", close: "20:00"}],
    wednesday: [{open: "08:00", close: "20:00"}],
    thursday: [{open: "08:00", close: "20:00"}],
    friday: [{open: "08:00", close: "20:00"}],
    saturday: [{open: "08:00", close: "20:00"}],
    sunday: [{open: "08:00", close: "20:00"}]
  },
  price: 8,
  rating: 4,
  address: "Leoforos Vasilissis Olgas Plaka Athens Greece",
  photo_title: "zeus"
    )


athenes16 = Activity.create(
  category: "Historic sites",
  name: "Ancient Agora of Athens",
  description: "These ruins, located in the heart of modern Athens, were once the site of the marketplace in ancient times, a political, cultural and economic center of the ancient world. ",
  duration: "00:30",
  opening_hours: {
    monday: [{open: "11:00", close: "19:30"}],
    tuesday: [{open: "08:00", close: "19:30"}],
    wednesday: [{open: "08:00", close: "19:30"}],
    thursday: [{open: "08:00", close: "19:30"}],
    friday: [{open: "08:00", close: "19:30"}],
    saturday: [{open: "08:00", close: "19:30"}],
    sunday: [{open: "08:00", close: "19:30"}]
  },
  price: 8.50,
  rating: 4.5,
  address: "Adrianou 24, Athens 105 55 Greece",
  photo_title: "agora"
    )


athenes17 = Activity.create(
  category: "Museum",
  name: "The National Museum of Contemporary Art in Athens",
  description: "The National Museum of Contemporary Art, established in October 2000, is the sole national institution focused only on collecting and exhibiting contemporary Greek and international art in Athens.",
  duration: "02:30",
  opening_hours: {
    monday: [],
    tuesday: [{open: "11:00", close: "19:00"}],
    wednesday: [{open: "11:00", close: "19:00"}],
    thursday: [{open: "11:00", close: "19:00"}],
    friday: [{open: "11:00", close: "19:00"}],
    saturday: [{open: "11:00", close: "19:00"}],
    sunday: [{open: "11:00", close: "19:00"}]
  },
  price: 8.50,
  rating: 3,
  address: "Kallirois ave. & Am. Frantzi str. (former Fix factory) 11743 Athens - Greece",
  photo_title: "contemporary"
    )


athenes18 = Activity.create(
  category: "Points of interest & Lookouts",
  name: "Aeropagus",
  description: "TThe Areopagus (Arios Pagos), is located just to the right of the exit of the Acropolis. It is also known as the “Hill of Ares”. In classical times, this was the site of the Council of Nobles and the Judicial Court, that mainly dealt with homicide.",
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
  address: "Aeropagus Hill Athens - Greece",
  photo_title: "aeropagus"
    )

athenes19 = Activity.create(
  category: "Points of interest & Lookouts",
  name: "Plateia Syntagmatos",
  description: "TSyntagma Square is the central square of Athens. The square is named after the Constitution that Otto, the first King of Greece, was obliged to grant after a popular and military uprising on 3 September 1843. It is located in front of the 19th century Old Royal Palace, housing the Greek Parliament since 1934.",
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
  rating: 4,
  address: "Plateia Syntagmatos Athens - Greece",
  photo_title: "plateia"
    )

athenes20 = Activity.create(
  category: "Points of interest & Lookouts",
  name: "Stavros Niarchos Park",
  description: "Athens is short on green spaces, so this vast seaside park is a blessing. Covering a man-made slope that incorporates the roof of the Stavros Niarchos Foundation Cultural Center, this 21-hectare park has been sustainably designed with paths cutting through plantings of lavender, olive trees and other Mediterranean flora.
There's also kids' play areas, an outdoor gym and much more. A variety of free activities are laid on, but you can simply sit in a chair and soak up the sunshine.",
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
  address: " Leof. Andrea Siggrou 364, Kallithea 176 74, Greece",
  photo_title: "stavros"
    )

athenes21 = Activity.create(
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

paros1 = Activity.create(
  category: "Flea & Street Markets",
  name: "Lefkes",
  description: "It is the most mountainous village of Paros and the most verdurous one. Lefkes was the first capital of Paros. The village is located under a pinewood on the hill. A walk around its beautiful narrow streets with the white joints will impress you.",
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
  price: 0,
  rating: 4.5,
  address: "Lefkes , Paros 84400 ,Cyclades , GREECE",
  photo_title: "lefkes"
    )

athenes16 = Activity.create(
  category: "Neighbourhood",
  name: "Psirri",
  description: "Vibrant Psyrri centers on Iroon Square, whose surrounding streets have eateries offering meze and live music, including rembetika (Greek blues). Bars with DJs stay open late, as do tavernas serving traditional specialties like meatballs and Greek salad. Small artisan shops, often decorated with graffiti, sell handmade leather bags, indie fashions and offbeat homewares.",
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
  rating: 4,
  address: "Psirri, Athina 105 54, Greece, Athens",
  photo_title: "psirri"
  )

athenes17 = Activity.create(
  category: "Historic sites",
  name: "Temple of Olympian Zeus",
  description: "A can't-miss on two counts: it's a marvellous temple, once the largest in Greece, and it's smack in the centre of Athens. Of the temple's 104 original Corinthian columns (17m high with a base diameter of 1.7m), only 15 remain – the fallen column was blown down in a gale in 1852.
Begun in the 6th century BC by Peisistratos, the temple was abandoned for lack of funds. Various other leaders took a stab at completing it, but it was left to Hadrian to finish the job in AD 131, thus taking more than 700 years in total to build. In typically immodest fashion, Hadrian built not just a colossal statue of Zeus, but an equally large one of himself.",
  duration: "01:00",
  opening_hours: {
    monday: [{open: "08:00", close: "20:00"}],
    tuesday: [{open: "08:00", close: "20:00"}],
    wednesday: [{open: "08:00", close: "20:00"}],
    thursday: [{open: "08:00", close: "20:00"}],
    friday: [{open: "08:00", close: "20:00"}],
    saturday: [{open: "08:00", close: "20:00"}],
    sunday: [{open: "08:00", close: "20:00"}]
  },
  price: 8,
  rating: 4,
  address: "Leoforos Vasilissis Olgas Plaka Athens Greece",
  photo_title: "zeus"
    )


athenes18 = Activity.create(
  category: "Historic sites",
  name: "Ancient Agora of Athens",
  description: "These ruins, located in the heart of modern Athens, were once the site of the marketplace in ancient times, a political, cultural and economic center of the ancient world. ",
  duration: "00:30",
  opening_hours: {
    monday: [{open: "11:00", close: "19:30"}],
    tuesday: [{open: "08:00", close: "19:30"}],
    wednesday: [{open: "08:00", close: "19:30"}],
    thursday: [{open: "08:00", close: "19:30"}],
    friday: [{open: "08:00", close: "19:30"}],
    saturday: [{open: "08:00", close: "19:30"}],
    sunday: [{open: "08:00", close: "19:30"}]
  },
  price: 8.50,
  rating: 4.5,
  address: "Adrianou 24, Athens 105 55 Greece",
  photo_title: "agora"
    )


athenes19 = Activity.create(
  category: "Museum",
  name: "The National Museum of Contemporary Art in Athens",
  description: "The National Museum of Contemporary Art, established in October 2000, is the sole national institution focused only on collecting and exhibiting contemporary Greek and international art in Athens.",
  duration: "02:30",
  opening_hours: {
    monday: [],
    tuesday: [{open: "11:00", close: "19:00"}],
    wednesday: [{open: "11:00", close: "19:00"}],
    thursday: [{open: "11:00", close: "19:00"}],
    friday: [{open: "11:00", close: "19:00"}],
    saturday: [{open: "11:00", close: "19:00"}],
    sunday: [{open: "11:00", close: "19:00"}]
  },
  price: 8.50,
  rating: 3,
  address: "Kallirois ave. & Am. Frantzi str. (former Fix factory) 11743 Athens - Greece",
  photo_title: "contemporary"
    )


athenes19 = Activity.create(
  category: "Points of interest & Lookouts",
  name: "Aeropagus",
  description: "TThe Areopagus (Arios Pagos), is located just to the right of the exit of the Acropolis. It is also known as the “Hill of Ares”. In classical times, this was the site of the Council of Nobles and the Judicial Court, that mainly dealt with homicide.",
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
  address: "Aeropagus Hill Athens - Greece",
  photo_title: "aeropagus"
    )

athenes20 = Activity.create(
  category: "Points of interest & Lookouts",
  name: "Plateia Syntagmatos",
  description: "TSyntagma Square is the central square of Athens. The square is named after the Constitution that Otto, the first King of Greece, was obliged to grant after a popular and military uprising on 3 September 1843. It is located in front of the 19th century Old Royal Palace, housing the Greek Parliament since 1934.",
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
  rating: 4,
  address: "Plateia Syntagmatos Athens - Greece",
  photo_title: "plateia"
    )

athenes21 = Activity.create(
  category: "Points of interest & Lookouts",
  name: "Stavros Niarchos Park",
  description: "Athens is short on green spaces, so this vast seaside park is a blessing. Covering a man-made slope that incorporates the roof of the Stavros Niarchos Foundation Cultural Center, this 21-hectare park has been sustainably designed with paths cutting through plantings of lavender, olive trees and other Mediterranean flora.
There's also kids' play areas, an outdoor gym and much more. A variety of free activities are laid on, but you can simply sit in a chair and soak up the sunshine.",
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
  address: " Leof. Andrea Siggrou 364, Kallithea 176 74, Greece",
  photo_title: "stavros"
    )

paros1 = Activity.create(
  category: "Flea & Street Markets",
  name: "Lefkes",
  description: "It is the most mountainous village of Paros and the most verdurous one. Lefkes was the first capital of Paros. The village is located under a pinewood on the hill. A walk around its beautiful narrow streets with the white joints will impress you.",
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
  price: 0,
  rating: 4.5,
  address: "Lefkes , Paros 84400 ,Cyclades , GREECE",
  photo_title: "lefkes"
    )


paros2 = Activity.create(
  category: "Beach",
  name: "Kolymbithres Beach",
  description: "Easily accessible by bus and water taxi from the Naousa port. Hi Bigla is a perfect tavern for a lunch during your beach day.",
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
  price: 0,
  rating: 4,
  address: "Kolympethres Beach, 844 01, Greece",
  photo_title: "kolimpithres"
  )

paros3 = Activity.create(
  category: "Beach",
  name: "Lageri Beach",
  description: "Easily accessible by bus and water taxi from the Naousa port. Hi Bigla is a perfect tavern for a lunch during your beach day.",
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
  price: 0,
  rating: 4,
  address: "Kolympethres Beach, 844 01, Greece",
  photo_title: "kolimpithres"
  )

paros4 = Activity.create(
  category: "Marina",
  name: "Old port of Naoussa",
  description: "Easily accessible by bus and water taxi from the Naousa port. Hi Bigla is a perfect tavern for a lunch during your beach day.",
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
  price: 0,
  rating: 4,
  address: "Kolympethres Beach, 844 01, Greece",
  photo_title: "kolimpithres"
  )

paros5 = Activity.create(
  category: "Historic sites",
  name: "Parikia Town",
  description: "Easily accessible by bus and water taxi from the Naousa port. Hi Bigla is a perfect tavern for a lunch during your beach day.",
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
  price: 0,
  rating: 4,
  address: "Kolympethres Beach, 844 01, Greece",
  photo_title: "kolimpithres"
  )

paros6 = Activity.create(
  category: "Wineyards",
  name: "Moraitis Winery",
  description: "Easily accessible by bus and water taxi from the Naousa port. Hi Bigla is a perfect tavern for a lunch during your beach day.",
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
  price: 0,
  rating: 4,
  address: "Kolympethres Beach, 844 01, Greece",
  photo_title: "kolimpithres"
  )

paros7 = Activity.create(
  category: "Points of interest & Lookouts",
  name: "Paros Park",
  description: "Easily accessible by bus and water taxi from the Naousa port. Hi Bigla is a perfect tavern for a lunch during your beach day.",
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
  price: 0,
  rating: 4,
  address: "Kolympethres Beach, 844 01, Greece",
  photo_title: "kolimpithres"
  )

paros8 = Activity.create(
  category: "Beach",
  name: "Golden Beach",
  description: "Easily accessible by bus and water taxi from the Naousa port. Hi Bigla is a perfect tavern for a lunch during your beach day.",
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
  price: 0,
  rating: 4,
  address: "Golden beach, 731 00, Greece",
  photo_title: "goldenbeach"
  )

paros9 = Activity.create(
  category: "Beach",
  name: "Santa Maria Beach",
  description: "Easily accessible by bus and water taxi from the Naousa port. Hi Bigla is a perfect tavern for a lunch during your beach day.",
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
  price: 0,
  rating: 4,
  address: "Santa Maria Beach, Santa Maria 844 01, Greece",
  photo_title: "santamariabeach"
  )

paros10 = Activity.create(
  category: "Beach",
  name: "Monastiri Beach",
  description: "Easily accessible by bus and water taxi from the Naousa port. Hi Bigla is a perfect tavern for a lunch during your beach day.",
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
  price: 0,
  rating: 4,
  address: "Monastiri beach, Paros 844 01, Greece",
  photo_title: "monastiribeach"
  )

paros11 = Activity.create(
  category: "Beach",
  name: "Faragas Beach",
  description: "Easily accessible by bus and water taxi from the Naousa port. Hi Bigla is a perfect tavern for a lunch during your beach day.",
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
  price: 0,
  rating: 4,
  address: "Faragas Beach, Paros 844 00, Greece",
  photo_title: "faragas"
  )

paros12 = Activity.create(
  category: "Beach",
  name: "Palm Beach",
  description: "Easily accessible by bus and water taxi from the Naousa port. Hi Bigla is a perfect tavern for a lunch during your beach day.",
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
  price: 0,
  rating: 4,
  address: "agia Eirini, 84400 Paroikía, Kikladhes,, Paros 844 00, Greece",
  photo_title: "palmbeach"
  )


paros13 = Activity.create(
  category: "Beach",
  name: "Martselo Beach",
  description: "Easily accessible by bus and water taxi from the Naousa port. Hi Bigla is a perfect tavern for a lunch during your beach day.",
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
  price: 0,
  rating: 4,
  address: "Marcello Beach, Paros 844 00, Greece",
  photo_title: "martselo"
  )

paros14 = Activity.create(
  category: "Beach",
  name: "Molos Beach",
  description: "Easily accessible by bus and water taxi from the Naousa port. Hi Bigla is a perfect tavern for a lunch during your beach day.",
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
  price: 0,
  rating: 4,
  address: "Molos Beach, Paros 844 00, Greece",
  photo_title: "molosbeach"
  )

paros15 = Activity.create(
  category: "Churches",
  name: "Panagia Ekatondapiliani",
  description: "Easily accessible by bus and water taxi from the Naousa port. Hi Bigla is a perfect tavern for a lunch during your beach day.",
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
  price: 0,
  rating: 4,
  address: "Church Panagia Ekatontapiliani, Prompona 18, Paros 844 00, Greece",
  photo_title: "panagia"
  )

paros16 = Activity.create(
  category: "Historic sites",
  name: "Marathi Marble Quarries",
  description: "Easily accessible by bus and water taxi from the Naousa port. Hi Bigla is a perfect tavern for a lunch during your beach day.",
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
  price: 0,
  rating: 4,
  address: "Ancient Marble Quarries, Epar.Od. Parikias-Marpissas, Paros 844 00, Greece",
  photo_title: "marathi"
  )

paros17 = Activity.create(
  category: "Beach",
  name: "Kalogeros Beach",
  description: "Sandy beach, accessible by car.",
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
  price: 0,
  rating: 4,
  address: "Kalogeros beach, Paros 844 00, Greece",
  photo_title: "kalogeros"
  )

paros18 = Activity.create(
  category: "Flea & Street Markets",
  name: "Kapopoulos Fine Arts Paros Gallery",
  description: "Kapopoulos Fine Arts, being an established name at the art bussines, so far, offers pieces of the most famous Greek and international artist like Alekos Fassianos, Pavlos (Dionysopoulos) Mina Valyraki, Mr. Brainwash, Richard Orlinski, Alec Monopoly, Laurence Jenkell and many more.",
  duration: "00:30",
  opening_hours: {
      monday: [
      {open: "11:00", close: "15:00"},
      {open: "19:00", close: "01:00"}
    ],
      tuesday: [
      {open: "11:00", close: "15:00"},
      {open: "19:00", close: "01:00"}
    ],
      wednesday: [
      {open: "11:00", close: "15:00"},
      {open: "19:00", close: "01:00"}
    ],
      thursday: [
      {open: "11:00", close: "15:00"},
      {open: "19:00", close: "01:00"}
    ],
      friday: [
      {open: "11:00", close: "15:00"},
      {open: "19:00", close: "01:00"}
    ],
      saturday: [{open: "19:00", close: "01:00"}],
      sunday: [
      {open: "11:00", close: "15:00"},
      {open: "19:00", close: "01:00"}
    ]
    },
  price: 0,
  rating: 4,
  address: "Potami Naousas, Paros Potami area, Naoussa 84401 Greece",
  photo_title: "kapopoulos"
  )

 # "Aeropagus","Theatre of Dionysus", "Kapnikarea", "Byzantine and Christian Museum", "Philopappos Monument", Odeon of Herodes Atticus", "Temple of Athena Nike", "Temple of Hephaestus", "Erechtheion", ""Varvakios Agora",

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
  photo_title: "b4bhotel"
  )

flat1 = Booking.create(
  category: "Flat",
  name: "Katerina Mare",
  begin_date: "26/03/2021",
  end_date: "01/04/2021",
  price: 867,
  address: "Naousa 844 00, Greece",
  trip: trip1,
  photo_title: "katerinahotel"
  )

hotel2 = Booking.create(
  category: "Hotel",
  name: "Acropolis View Hotel",
  begin_date: "01/04/2021",
  end_date: "02/04/2021",
  price: 74,
  address: "Webster 10 & Robertou Galli, Athenes, 11742, Greece",
  trip: trip1,
  photo_title: "acropolishotel"
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
  photo_title: "ferry"
  )

ferry2 = Booking.create(
  category: "Ferry",
  name: "Blue Star Ferries",
  begin_date: "01/04/2021, 10h45",
  end_date: "01/04/2021, 15h00",
  price: 65,
  address: "Paros 844 00, Greece",
  trip: trip1,
  photo_title: "ferry"
  )

puts "#{Booking.count} bookings created"


puts "Database ready"
