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
User.destroy_all
Vehicle.destroy_all
puts "Database cleaned"

User.create(name: "Marcus")

Vehicle.create(
  type: "BMW",
  description: "M5 SPORT",
  category: "car"
)

puts "User created"
puts "Vehicle created"
