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
  price: 30
)
bmw = Vehicle.create(
  name: "Rolls Royce",
  description: "The Rolls-Royce Ghost is a full-sized luxury car manufactured by Rolls-Royce Motor Cars. The 'Ghost' nameplate, named in honour of the Silver Ghost, a car first produced in 1906, was announced in April 2009 at the Auto Shanghai show. The production model was officially unveiled at the 2009 Frankfurt Motor Show.",
  category: "Car",
  user_id: user.id,
  price: 100
)
bmw = Vehicle.create(
  name: "Ferrari",
  description: "La Ferrari,
  LaFerrari is the first full hybrid produced by the Italian automotive marque, providing the highest power output of any Ferrari road car whilst decreasing fuel consumption by 40 percent.",
  category: "Car",
  user_id: user.id,
  price: 70
)
bmw = Vehicle.create(
  name: "Lambourghini",
  description: "Aventador,
  The Lamborghini car has the reputation of being one of the fastest cars to grace the motor racing world, with the Aventador achieving the Lamborghini top speed of 349 kmph. Lamborghini India imports the cars and sells them off the shelf. The Lamborghini starting price in India is upwards of INR 3 Crores.",
  category: "Car",
  user_id: user.id,
  price: 70
)
bmw = Vehicle.create(
  name: "Bentley",
  description: "Bentayga, The Bentley Bentayga is a mid-size luxury crossover SUV marketed by Bentley since late 2015. It is the second SUV, and the first in large numbers, to be produced by the brand.",
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
  user_id: 2,
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

booking = Booking.create!(
  date: 10102022,
  user_id: user.id,
  vehicle_id: Vehicle.last.id,
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
