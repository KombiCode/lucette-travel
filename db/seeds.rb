TripActivity.destroy_all
Activity.destroy_all
Booking.destroy_all
ToDo.destroy_all
Trip.destroy_all
User.destroy_all

# CATEGORIES ["Points of interest & Lookouts", "Flea & Street Markets" "Beaches", Museums", "Historic sites", "Neighborhoods", "Gardens", "Marinas", "Churches", "Wineyards"]
p "creating User"

user1 = User.create(
  firstname: "Louis",
  lastname: "Dupont",
  phone: "0687676735",
  email: "louis@gmail.com",
  password: "azerty"
  )

p "#{User.count} users created"
p "creating trip"

trips1 = Trip.create(
  name: "Greece",
  country: "Greece",
  city: "Athens",
  begin_date: "24/03/2021",
  end_date: "02/04/2021",
  language: "Greek - English",
  devise: "€",
  user: User.find_by(email: "louis@gmail.com")
  )

trips2 = Trip.create(
  name: "Island",
  country: "Island",
  city: "Reykjavík",
  begin_date: "15/01/2020",
  end_date: "25/01/2021",
  language: "English",
  devise: "€",
  user: User.find_by(email: "louis@gmail.com")
  )

p "#{Trip.count} trips created"

p "creating to-do"

to_dos1 = ToDo.create(
  name: "Visa",
  description: "Check if you need a visa",
  done: true,
  trip: Trip.find_by(name: "Greece")
  )

to_dos2 = ToDo.create(
  name: "Passport",
  description: "Take it for both of us",
  done: true,
  trip: Trip.find_by(name: "Greece")
  )

to_dos3 = ToDo.create(
  name: "Souvenirs",
  description: "Bring Back souvenirs",
  done: false,
  trip: Trip.find_by(name: "Greece")
  )

to_dos4 = ToDo.create(
  name: "Bath suit",
  description: "Buy a bath suit for Paros",
  done: false,
  trip: Trip.find_by(name: "Greece")
  )

to_dos5 = ToDo.create(
  name: "Luggage",
  description: "Smartphone charger, glasses, tablet, headphones",
  done: true,
  trip: Trip.find_by(name: "Greece")
  )

p "#{ToDo.count} todos created"
p "creating Activity"

activity1 = Activity.create(
  category: "Historic site",
  name: "Parthenon",
  description: "The majestic ruins of an ancient Greek building, known for its dignified white marble columns and perfect sense of proportion.",
  date: "",
  duration: "> 3h",
  opening_hours: "Sun Sat 8.00am - 8.00pm",
  price: "",
  rating: 4.5,
  address: "Acropolis Top of Dionyssiou Areopagitou, Athens 105 58 Greece"
  )


activity2 = Activity.create(
  category: "Historic site",
  name: "The Acropolis",
  description: "The most famous site in all of Athens, this large hill lies in the center of the city and contains a cluster of ancient ruins.",
  date: "",
  duration: "1h",
  opening_hours: "all day",
  price: 13,
  rating: 4.5,
  address: "via Dionysiou Areopagitou str., Athens 105 58 Greece"
  )

activity2bis = Activity.create(
  category: "Museum",
  name: "Acropolis Museum",
  description: "Modern, uptodate building on the foot of the Acropolis housing important ancient Greek statues and much more.",
  date: "",
  duration: "2/3h",
  opening_hours: "",
  price: 7.50,
  rating: 4.5,
  address: "Dionysiou Areopagitou 15, Athens 117 42 Greece"
  )

activity3 = Activity.create(
  category: "Museum",
  name: "Museum of Cycladic Art",
  description: "A dynamic cultural institution in the centre of Athens, the Museum of Cycladic Art focuses on promoting the ancient cultures of the Aegean and Cyprus, with particular emphasis on Cycladic art of the third millennium BC. The Museum’s permanent collections include 3000 Cycladic, ancient Greek, and ancient Cypriot artefacts, witnesses to the cultures that flourished in the Aegean and the Eastern Mediterranean from the fourth millennium BC to approximately the sixth century AD. The Museum of Cycladic Art’s temporary exhibitions focus on archaeology and modern and contemporary art with the aim to familiarize the public with important twentieth and twenty-first century artists and to explore the relations between ancient cultures and modern art. Salvador Dali, Pablo Picasso, Thomas Struth, Louise Bourgeois, Sarah Lucas, Ugo Rondinone, Jannis Kounellis, Mario Merz, Ai Weiwei, and Cy Twombly are among the artists hosted.",
  date: "",
  duration: "1/2h",
  opening_hours: "Sun 11.00am - 5.00pm Mon Wed-Sat 10.00am - 5.00pm",
  price: 7,
  rating: 4,
  address: "4 Neofytou Douka str., Athens 106 74 Greece"
  )

activity4 = Activity.create(
  category: "Neighbourhood",
  name: "Monastiraki Neighbourhood",
  description: "Lively flea market neighborhood with lots of small tavernas serving good-value local snacks.",
  date: "",
  duration: "2/3h",
  opening_hours: "all day",
  price: 0,
  rating: 4,
  address: "Monastikari Square"
  )

# activity5 = Activity.create(
#   category: "",
#   name: "Varvakios Agora",
#   description: "Nice place to stay and a good view of the city",
#   date: "01/02/2021",
#   price: 45,
#   rating: 3,
#   address: "8 Rue du foie"
#   )

# activity6 = Activity.create(
#   name: "The Acropolis",
#   description: "Nice place to stay and a good view of the city",
#   date: "01/02/2021",
#   price: 45,
#   rating: 3,
#   address: "8 Rue du foie"
#   )

activity7 = Activity.create(
  category: "Points of interest & Lookouts",
  name: "Lycabettus Hill",
  description: "Walk or take the funicular tramway to the top of this hill for the best views of Athens",
  date: "",
  duration: "1/2h",
  opening_hours: "All day",
  price: 0,
  rating: 4.5,
  address: "Mount Lycabettus, Athens 114 71, Greece"
  )

activity8 = Activity.create(
  category: "Neighbourhood",
  name: "Plaka Neighbourhood",
  description: "Historic neighborhood located at the base of the hill topped by the Acropolis.",
  date: "",
  duration: "2/3h",
  opening_hours: "All day",
  price: 0,
  rating: 4.5,
  address: "Athens 10556 Greece"
  )

# activity9 = Activity.create(
#   category: "",
#   name: "Temple of Poseidon",
#   description: "Nice place to stay and a good view of the city",
#   date: "01/02/2021",
#   price: 45,
#   rating: 3,
#   address: "8 Rue du foie"
#   )

# activity10 = Activity.create(
#   category: "",
#   name: "The National Museum of Contemporary Art in Athens",
#   description: "Nice place to stay and a good view of the city",
#   date: "01/02/2021",
#   price: 45,
#   rating: 3,
#   address: "8 Rue du foie"
#   )

# activity11 = Activity.create(
#   category: "",
#   name: "Erechtheion",
#   description: "Nice place to stay and a good view of the city",
#   date: "01/02/2021",
#   price: 45,
#   rating: 3,
#   address: "8 Rue du foie"
#   )

activity12 = Activity.create(
  category: "Museum",
  name: "National Archaeological Museum",
  description: "The National Archaeological Museum in Athens houses some of the most important artifacts from a variety of archaeological locations around Greece from prehistory to late antiquity. It is considered one of the greatest museums in the world and contains the richest collection of artifacts from Greek antiquity worldwide.",
  date: "",
  duration: "2/3h",
  opening_hours: "From April until October 31st: Tu 1.00pm - 8.00pm Wed-Mon 8.00am - 8.00pm",
  price: 12,
  rating: 4.5,
  address: "28is Oktovriou 44, Athina 106 82, Greece"
  )

# activity13 = Activity.create(
#   category: "",
#   name: "Temple of Hephaestus",
#   description: "Nice place to stay and a good view of the city",
#   date: "01/02/2021",
#   price: 45,
#   rating: 3,
#   address: "8 Rue du foie"
#   )

# activity14 = Activity.create(
#   category: "",
#   name: "Museum of Cycladic Art",
#   description: "Nice place to stay and a good view of the city",
#   date: "01/02/2021",
#   price: 45,
#   rating: 3,
#   address: "8 Rue du foie"
#   )

# activity15 = Activity.create(
#   category: "",
#   name: "Temple of Athena Nike",
#   description: "Nice place to stay and a good view of the city",
#   date: "01/02/2021",
#   price: 45,
#   rating: 3,
#   address: "8 Rue du foie"
#   )

# activity16 = Activity.create(
#   category: "",
#   name: "Temple of Olympian Zeus",
#   description: "Nice place to stay and a good view of the city",
#   date: "01/02/2021",
#   price: 45,
#   rating: 3,
#   address: "8 Rue du foie"
#   )

# activity17 = Activity.create(
#   category: "",
#   name: "Ancient Agora of Athens",
#   description: "Nice place to stay and a good view of the city",
#   date: "01/02/2021",
#   price: 45,
#   rating: 3,
#   address: "8 Rue du foie"
#   )

activity18 = Activity.create(
  category: "Historic sites",
  name: "Panathenaic Stadium",
  description: "The Old Olympic Stadium in Athens Greece, built of granite in late 19th century on the site of ancient Athens from the 4th Century; hosted the first modern games in 1896.",
  date: "",
  duration: "1h",
  opening_hours: "Sun - Sat 8.00am - 7.00pm",
  price: 0,
  rating: 4.5,
  address: "Vassileos Konstantinou Avenue opposite the statue of Myron Discobolus, Athens 116 35 Greece"
  )

# activity19 = Activity.create(
#   category: "",
#   name: "Odeon of Herodes Atticus",
#   description: "Nice place to stay and a good view of the city",
#   date: "01/02/2021",
#   price: 45,
#   rating: 3,
#   address: "8 Rue du foie"
#   )

# activity20 = Activity.create(
#   category: "",
#   name: "Philopappos Monument",
#   description: "Nice place to stay and a good view of the city",
#   date: "01/02/2021",
#   price: 45,
#   rating: 3,
#   address: "8 Rue du foie"
#   )

# activity21 = Activity.create(
#   category: "",
#   name: "Philopappos Monument",
#   description: "Nice place to stay and a good view of the city",
#   date: "01/02/2021",
#   price: 45,
#   rating: 3,
#   address: "8 Rue du foie"
#   )

# activity22 = Activity.create(
#   category: "",
#   name: "Byzantine and Christian Museum",
#   description: "Nice place to stay and a good view of the city",
#   date: "01/02/2021",
#   price: 45,
#   rating: 3,
#   address: "8 Rue du foie"
#   )

# activity23 = Activity.create(
#   category: "",
#   name: "Kapnikarea",
#   description: "Nice place to stay and a good view of the city",
#   date: "01/02/2021",
#   price: 45,
#   rating: 3,
#   address: "8 Rue du foie"
#   )

# activity23 = Activity.create(
#   category: "",
#   name: "Kapnikarea",
#   description: "Nice place to stay and a good view of the city",
#   date: "01/02/2021",
#   price: 45,
#   rating: 3,
#   address: "8 Rue du foie"
#   )

# activity24 = Activity.create(
#   category: "",
#   name: "National Garden",
#   description: "Nice place to stay and a good view of the city",
#   date: "01/02/2021",
#   price: 45,
#   rating: 3,
#   address: "8 Rue du foie"
#   )

# activity25 = Activity.create(
#   category: "",
#   name: "Theatre of Dionysus",
#   description: "Nice place to stay and a good view of the city",
#   date: "01/02/2021",
#   price: 45,
#   rating: 3,
#   address: "8 Rue du foie"
#   )

# activity26 = Activity.create(
#   category: "",
#   name: "Aeropagus",
#   description: "Nice place to stay and a good view of the city",
#   date: "01/02/2021",
#   price: 45,
#   rating: 3,
#   address: "8 Rue du foie"
#   )

Trip.find_by(name: "Greece").activities << activity1

p "#{Activity.count} activities created"

p "creating booking"

hotel1 = Booking.create(
  category: "Hotel",
  name: "B4B Athens Signature Hotel",
  begin_date: "24/03/2021",
  end_date: "26/03/2021",
  price: 152,
  address: " Theofilopoulou 18, Kallirois Avenue, 11743, Athenes, 11743, Greece",
  trip: Trip.find_by(name: "Greece")
  )

flat1 = Booking.create(
  category: "Flat",
  name: "Marcora's Historical Estate ",
  begin_date: "26/03/2021",
  end_date: "01/04/2021",
  price: 480,
  address: "Eparchiaki Odos Pontis-Messogis, Strongylí, 49084, Greece",
  trip: Trip.find_by(name: "Greece")
  )

hotel2 = Booking.create(
  category: "Hotel",
  name: "Acropolis View Hotel",
  begin_date: "01/04/2021",
  end_date: "02/04/2021",
  price: 74,
  address: "Webster 10 & Robertou Galli, Athenes, 11742, Greece",
  trip: Trip.find_by(name: "Greece")
  )

plane1 = Booking.create(
  category: "Plane",
  name: "KLM",
  begin_date: "24/03/2021, 11h50",
  end_date: "25/03/2021, 1h05",
  price: 263.40,
  address: "Lyon-Saint Exupéry Airport (LYS), Colombier-Saugnieu",
  trip: Trip.find_by(name: "Greece")
  )

plane2 = Booking.create(
  category: "Plane",
  name: "KLM",
  begin_date: "02/04/2021, 06h00",
  end_date: "02/04/2021, 10h55",
  price: 233.40,
  address: "Athenes Elefthérios-Venizélos International Airport (ATH), Attiki Odos, Spata-Artémis, Grèce",
  trip: Trip.find_by(name: "Greece")
  )

ferry1 = Booking.create(
  category: "Ferry",
  name: "Blue Star Ferries",
  begin_date: "26/03/2021, 17h30",
  end_date: "26/03/2021, 21h45",
  price: 60,
  address: "Port of Piraeus, Pirée, Greece",
  trip: Trip.find_by(name: "Greece")
  )

ferry2 = Booking.create(
  category: "Ferry",
  name: "Blue Star Ferries",
  begin_date: "01/04/2021, 10h45",
  end_date: "01/04/2021, 15h00",
  price: 65,
  address: "Paros 844 00, Greece",
  trip: Trip.find_by(name: "Greece")
  )

p "#{Booking.count} bookings created"
p "finish"






100.times do
Activity.create(
  category: "",
  name: Faker::Name.name,
  description: "Nice place to stay and a good view of the city",
  date: Faker::Date.between(from: 2.days.ago, to: Date.today),
  price: 45,
  rating: rand(1..5),
  address: "8 Rue du foie"
  )

end


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




