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
  user_id: user.id
)
puts "vehicle #{bmw.name} id #{bmw.id}"

puts "User created"
puts "Vehicle created"
