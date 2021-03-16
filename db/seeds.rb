Activity.destroy_all
Booking.destroy_all
ToDo.destroy_all
Trip.destroy_all
User.destroy_all


p "creating User"

user1 = User.create(
  firstname: "tutu",
  lastname: "Choucroute",
  phone: "0687676735",
  email: "tutu@tutu.com",
  password: "azerty"
  )

p "done"
p "creating trip"

trips1 = Trip.create(
  name: "Greece, Athène",
  country: "Greece",
  city: "Athene",
  begin_date: "01/02/2021",
  end_date: "02/02/2021",
  language: "en",
  devise: "€",
  user: User.find_by(email: "tutu@tutu.com")
  )

p "done"
p "creating to-do"

to_dos1 = ToDo.create(
  name: "shower",
  description: "Take a shower before leaving",
  done: false,
  trip: Trip.find_by(name: "Greece, Athène")
  )

p "done"
p "creating Activity"

activity1 = Activity.create(
  name: "Visit Parthenon",
  description: "Nice place to stay and a good view of the city",
  date: "01/02/2021",
  price: 45,
  rating: 3,
  done: false,
  address: "8 Rue du foie"
  )


Trip.find_by(name: "Greece, Athène").activities << activity1


p "done"
p "creating booking"

booking1 = Booking.create(
  category: "Hotel",
  name: "Beluga",
  begin_date: "03/02/2021",
  end_date: "04/02/2021",
  price: 22,
  address: "rue du fion",
  trip: Trip.find_by(name: "Greece, Athène")
  )

p "done"
