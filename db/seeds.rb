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
  description: "M5 SPORT,  The BMW M TwinPower Turbo 8-cylinder petrol engine of the BMW M5 Competition is the most powerful motor that BMW M has ever developed for a series production vehicle. The 4.4-litre power unit delivers 625hp, 750 Nm of torque, and goes from 0 to 62mh in a mere 3.3 seconds.",
  category: "Car",
  user_id: user.id,
  price: 30,
  image: "https://images.unsplash.com/photo-1614200179396-2bdb77ebf81b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bHV4dXJ5JTIwY2FyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60"
)
bmw = Vehicle.create(
  name: "Rolls Royce",
  description: "The Rolls-Royce Ghost is a full-sized luxury car manufactured by Rolls-Royce Motor Cars. The 'Ghost' nameplate, named in honour of the Silver Ghost, a car first produced in 1906, was announced in April 2009 at the Auto Shanghai show. The production model was officially unveiled at the 2009 Frankfurt Motor Show.",
  category: "Car",
  user_id: user.id,
  price: 100,
  image: "https://images.unsplash.com/photo-1519245659620-e859806a8d3b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8bHV4dXJ5JTIwY2FyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60"
)
bmw = Vehicle.create(
  name: "Ferrari",
  description: "La Ferrari,
  LaFerrari is the first full hybrid produced by the Italian automotive marque, providing the highest power output of any Ferrari road car whilst decreasing fuel consumption by 40 percent.",
  category: "Car",
  user_id: user.id,
  image: "https://images.unsplash.com/photo-1519245659620-e859806a8d3b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8bHV4dXJ5JTIwY2FyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60",
  price: 70
)

bmw = Vehicle.create(
  name: "Aurora",
  description: "Northern seas",
  category: "Yacht",
  image: "https://images.unsplash.com/photo-1567899378494-47b22a2ae96a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8eWFjaHR8ZW58MHx8MHx8&auto=format&fit=crop&w=700&q=60",
  user_id: user.id,
  price: 250
)
bmw = Vehicle.create(
  name: "Escape",
  description: "a fitting title for the place where many owners go to get away from the stresses of the modern world. At least eight yachts bear this exact name and many more use variations on the theme, such as Sweet Escape and Magnificent Escape.",
  category: "Yacht",
  image: "https://images.unsplash.com/photo-1621277224630-81d9af65e40c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHlhY2h0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60",
  user_id: user.id,
  price: 400
)
bmw = Vehicle.create(
  name: "My Way",
  description: "Whether you prefer the Frank Sinatra original or the Sex Pistols cover, there is no denying the cultural impact of this classic tune.",
  category: "Yacht",
  image: "https://images.unsplash.com/photo-1587230049060-c3de8f7327fa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OTR8fHlhY2h0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60",
  user_id: 2,
  price: 425
)


booking = Booking.create!(
  date: 10102022,
  user_id: user.id,
  vehicle_id: Vehicle.first.id,
)
booking = Booking.create!(
  date: 12092022,
  user_id: User.last.id,
  vehicle_id: Vehicle.last.id,
)
booking = Booking.create!(
  date: 11062022,
  user_id: User.last.id,
  vehicle_id: Vehicle.last.id,
)


puts "User created"
puts "Vehicle created"
