TripActivity.destroy_all
Activity.destroy_all
Booking.destroy_all
ToDo.destroy_all
Trip.destroy_all
User.destroy_all


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
  category: "",
  name: "Parthenon",
  description: "Nice place to stay and a good view of the city",
  date: "01/02/2021",
  price: 45,
  rating: 3,
  done: false,
  address: "8 Rue du foie"
  )


activity2 = Activity.create(
  category: "",
  name: "The Acropolis",
  description: "Nice place to stay and a good view of the city",
  date: "01/02/2021",
  price: 45,
  rating: 3,
  done: false,
  address: "8 Rue du foie"
  )

activity3 = Activity.create(
  category: "",
  name: "The Acropolis",
  description: "Nice place to stay and a good view of the city",
  date: "01/02/2021",
  price: 45,
  rating: 3,
  done: false,
  address: "8 Rue du foie"
  )

activity4 = Activity.create(
  category: "",
  name: "The Acropolis",
  description: "Nice place to stay and a good view of the city",
  date: "01/02/2021",
  price: 45,
  rating: 3,
  done: false,
  address: "8 Rue du foie"
  )

activity5 = Activity.create(
  category: "",
  name: "The Acropolis",
  description: "Nice place to stay and a good view of the city",
  date: "01/02/2021",
  price: 45,
  rating: 3,
  done: false,
  address: "8 Rue du foie"
  )

activity6 = Activity.create(
  name: "The Acropolis",
  description: "Nice place to stay and a good view of the city",
  date: "01/02/2021",
  price: 45,
  rating: 3,
  done: false,
  address: "8 Rue du foie"
  )

activity7 = Activity.create(
  category: "",
  name: "The Acropolis",
  description: "Nice place to stay and a good view of the city",
  date: "01/02/2021",
  price: 45,
  rating: 3,
  done: false,
  address: "8 Rue du foie"
  )

activity8 = Activity.create(
  category: "",
  name: "The Acropolis",
  description: "Nice place to stay and a good view of the city",
  date: "01/02/2021",
  price: 45,
  rating: 3,
  done: false,
  address: "8 Rue du foie"
  )

activity9 = Activity.create(
  category: "",
  name: "The Acropolis",
  description: "Nice place to stay and a good view of the city",
  date: "01/02/2021",
  price: 45,
  rating: 3,
  done: false,
  address: "8 Rue du foie"
  )

activity10 = Activity.create(
  category: "",
  name: "The Acropolis",
  description: "Nice place to stay and a good view of the city",
  date: "01/02/2021",
  price: 45,
  rating: 3,
  done: false,
  address: "8 Rue du foie"
  )

activity11 = Activity.create(
  category: "",
  name: "The Acropolis",
  description: "Nice place to stay and a good view of the city",
  date: "01/02/2021",
  price: 45,
  rating: 3,
  done: false,
  address: "8 Rue du foie"
  )

activity12 = Activity.create(
  category: "",
  name: "The Acropolis",
  description: "Nice place to stay and a good view of the city",
  date: "01/02/2021",
  price: 45,
  rating: 3,
  done: false,
  address: "8 Rue du foie"
  )

activity13 = Activity.create(
  category: "",
  name: "The Acropolis",
  description: "Nice place to stay and a good view of the city",
  date: "01/02/2021",
  price: 45,
  rating: 3,
  done: false,
  address: "8 Rue du foie"
  )

activity14 = Activity.create(
  category: "",
  name: "The Acropolis",
  description: "Nice place to stay and a good view of the city",
  date: "01/02/2021",
  price: 45,
  rating: 3,
  done: false,
  address: "8 Rue du foie"
  )

activity15 = Activity.create(
  category: "",
  name: "The Acropolis",
  description: "Nice place to stay and a good view of the city",
  date: "01/02/2021",
  price: 45,
  rating: 3,
  done: false,
  address: "8 Rue du foie"
  )

activity16 = Activity.create(
  category: "",
  name: "The Acropolis",
  description: "Nice place to stay and a good view of the city",
  date: "01/02/2021",
  price: 45,
  rating: 3,
  done: false,
  address: "8 Rue du foie"
  )

activity17 = Activity.create(
  category: "",
  name: "The Acropolis",
  description: "Nice place to stay and a good view of the city",
  date: "01/02/2021",
  price: 45,
  rating: 3,
  done: false,
  address: "8 Rue du foie"
  )

activity18 = Activity.create(
  category: "",
  name: "The Acropolis",
  description: "Nice place to stay and a good view of the city",
  date: "01/02/2021",
  price: 45,
  rating: 3,
  done: false,
  address: "8 Rue du foie"
  )

activity19 = Activity.create(
  category: "",
  name: "The Acropolis",
  description: "Nice place to stay and a good view of the city",
  date: "01/02/2021",
  price: 45,
  rating: 3,
  done: false,
  address: "8 Rue du foie"
  )

activity20 = Activity.create(
  category: "",
  name: "The Acropolis",
  description: "Nice place to stay and a good view of the city",
  date: "01/02/2021",
  price: 45,
  rating: 3,
  done: false,
  address: "8 Rue du foie"
  )

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
