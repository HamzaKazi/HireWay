# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"
require "json"

puts "Cleaning up database..."
Booking.destroy_all
Vehicle.destroy_all
User.destroy_all
puts "Database cleaned"
booking = Booking.create(date: 10112022)
user = User.create(email: "Marcus@gmail.com", password: "123456")
puts "user #{user.id}"



 bmw = Vehicle.create(
  name: "BMW",
  description: "M5 SPORT",
  category: "Car",
  user_id: user.id,
  price: 30
)
bmw = Vehicle.create(
  name: "Rolls Royce",
  description: "Ghost",
  category: "Car",
  user_id: user.id,
  price: 100
)
bmw = Vehicle.create(
  name: "Ferrari",
  description: "La Ferrari",
  category: "Car",
  user_id: user.id,
  price: 70
)
bmw = Vehicle.create(
  name: "Lambourghini",
  description: "Aventador",
  category: "Car",
  user_id: user.id,
  price: 70
)
bmw = Vehicle.create(
  name: "Bentley",
  description: "Bentayga",
  category: "Car",
  user_id: user.id,
  price: 50
)
bmw = Vehicle.create(
  name: "Spirit",
  description: "Superyacht",
  category: "Yacht",
  user_id: user.id,
  price: 300
)
bmw = Vehicle.create(
  name: "Aurora",
  description: "Northern seas",
  category: "Yacht",
  user_id: user.id,
  price: 250
)
bmw = Vehicle.create(
  name: "Escape",
  description: "a fitting title for the place where many owners go to get away from the stresses of the modern world. At least eight yachts bear this exact name and many more use variations on the theme, such as Sweet Escape and Magnificent Escape.",
  category: "Yacht",
  user_id: user.id,
  price: 400
)
bmw = Vehicle.create(
  name: "My Way",
  description: "Whether you prefer the Frank Sinatra original or the Sex Pistols cover, there is no denying the cultural impact of this classic tune.",
  category: "Yacht",
  user_id: user.id,
  price: 425
)
bmw = Vehicle.create(
  name: "Destiny",
  description: "Some believe that they were always fated to own a yacht, and that certainly seems to be the case with this 37.3 metre Heesen. Her name, Her Destiny, is a variant of one of the most popular superyacht names, with 10 other yachts in our database going by a similar name.",
  category: "Yacht",
  user_id: user.id,
  price: 300
)
bmw = Vehicle.create(
  name: "Andiamo",
  description: "Since Italy is one of the biggest yacht building nations on earth, it’s only fitting that our list has an Italian name on it (in case you didn’t know, Andiamo means “let’s go” in Italian).  Our records contain 11 superyachts registered as Andiamo, including this 36 metre Benetti Classic 120 that was launched in 2006 and the more recent 48 metre from Baglietto.",
  category: "Yacht",
  user_id: user.id,
  price: 150
)

booking = Booking.create(
  date: 10102022,
  user_id: user.id,
  vehicle_id: 23,
)
booking = Booking.create(
  date: 12092022,
  user_id: user.id,
  vehicle_id: 4,
)
booking = Booking.create(
  date: 11062022,
  user_id: user.id,
  vehicle_id: 2,
)


puts "User created"
puts "Vehicle created"
