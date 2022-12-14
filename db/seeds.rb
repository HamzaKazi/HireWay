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



# bmw0 = Vehicle.create(
#   name: "Ferrari",
#   description: "La Ferrari,
#   LaFerrari is the first full hybrid produced by the Italian automotive marque, providing the highest power output of any Ferrari road car whilst decreasing fuel consumption by 40 percent.",
#   category: "Car",
#   user_id: user.id,
#   address: "Mayfair",
#   price: 30,
#   image: "https://sites.lsa.umich.edu/mje/wp-content/uploads/sites/909/2022/01/Ferrari-700x467.jpg"
# )
# bmw1 = Vehicle.create(
#   name: "Bugatti Chiron",
#   description: "The Chiron is the fastest, most powerful, and exclusive production super sports car in BUGATTI's history. Its sophisticated design, innovative technology, and iconic, performance-oriented form make it a unique masterpiece of art, form and technique, that pushes boundaries beyond imagination.",
#   category: "Car",
#   user_id: user.id,
#   address: "Mayfair",
#   price: 100,
#   image: "https://vezess2.p3k.hu/app/uploads/2019/07/65770077_1070267573167207_1202577601495826432_e-700x467.jpg"
# )
# bmw2 = Vehicle.create(
#   name: "Porsche 911",
#   description: "The Porsche 911 (pronounced Nine Eleven or in German: Neunelfer) is a two-door 2+2 high performance rear-engined sports car introduced in September 1964 by Porsche AG of Stuttgart, Germany. It has a rear-mounted flat-six engine and originally a torsion bar suspension",
#   category: "Car",
#   user_id: user.id,
#   address: "Mayfair",
#   image: "https://media.panamera-life.com/wp-content/uploads/2022/01/14013657/B48FF357-224C-46EC-AC2C-3AA208D94F35-700x467.jpeg",
#   price: 70
# )
# bmw3 = Vehicle.create(
#   name: "Lamborghini",
#   description: "The Aventador advances every concept of performance, immediately establishing itself as the benchmark for the super sports car sector. Giving a glimpse of the future today, it comes from a family of supercars already considered legendary.",
#   category: "Car",
#   user_id: user.id,
#   address: "Mayfair",
#   image: "https://elitetraveler.com/wp-content/uploads/sites/8/2021/09/aston-martin-vantage-roadster-8.-min-700x467.jpg",
#   price: 300
# )



file = URI.open("https://elitetraveler.com/wp-content/uploads/sites/8/2022/05/Phantom-Series-II_Platino_2-min-700x467.jpg")
bmw = Vehicle.create!(
  name: "Rolls Royce",
  description: "The Rolls-Royce Ghost is a full-sized luxury car manufactured by Rolls-Royce Motor Cars. The Ghost nameplate, named in honour of the Silver Ghost, a car first produced in 1906, was announced in April 2009 at the Auto Shanghai show",
  category: "Car",
  user_id: user.id,
  price: 200,
  address: "Mayfair"
)
bmw.image.attach(io: file, filename: "nes.png", content_type: "image/png")
bmw.save

file = URI.open("https://vezess2.p3k.hu/app/uploads/2022/01/mercedes-vision-eqxx-4-700x467.jpg")
puts "save worked"
bmw = Vehicle.create(
  name: "Porsche Taycan",
  description: "The Porsche Taycan is a battery electric saloon and shooting brake produced by German automobile manufacturer Porsche. The concept version of the Taycan, named the Porsche Mission E, debuted at the 2015 Frankfurt Motor Show. The Taycan was revealed fully production-ready at the 2019 Frankfurt Motor Show.",
  category: "Car",
  user_id: user.id,
  # image: "https://vezess2.p3k.hu/app/uploads/2022/01/mercedes-vision-eqxx-4-700x467.jpg",
  price: 200,
  address: "Soho"
)
bmw.image.attach(io: file, filename: "nes.png", content_type: "image/png")
bmw.save

file = URI.open("https://marvel-b1-cdn.bc0a.com/f00000000235903/www.galatiyachts.com/wp-content/uploads/2018/08/y85-exterior-700x467.jpeg")
puts "save worked"
bmw = Vehicle.create(
  name: "Aurora",
  description: "Northern seas",
  category: "Yacht",
  # image: "https://marvel-b1-cdn.bc0a.com/f00000000235903/www.galatiyachts.com/wp-content/uploads/2018/08/y85-exterior-700x467.jpeg",
  user_id: user.id,
  price: 250,
  address: "Hoxton"
)
bmw.image.attach(io: file, filename: "nes.png", content_type: "image/png")
bmw.save

file = URI.open("https://images.unsplash.com/photo-1621277224630-81d9af65e40c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHlhY2h0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60")
puts "save worked"
bmw = Vehicle.create(
  name: "Escape",
  description: "a fitting title for the place where many owners go to get away from the stresses of the modern world. At least eight yachts bear this exact name and many more use variations on the theme, such as Sweet Escape and Magnificent Escape.",
  category: "Yacht",
  # image: "https://images.unsplash.com/photo-1621277224630-81d9af65e40c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHlhY2h0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60",
  user_id: user.id,
  price: 400,
  address: "Cornwall"
)
bmw.image.attach(io: file, filename: "nes.png", content_type: "image/png")
bmw.save
# bmw = Vehicle.create(

  #   name: "My Way",
  #   description: "Whether you prefer the Frank Sinatra original or the Sex Pistols cover, there is no denying the cultural impact of this classic tune.",
  #   category: "Yacht",
  #   image: "https://wp-media-yotlot.s3.amazonaws.com/wp-content/uploads/2019/10/16231034/Featured-Image-Master-V2-1-700x467.jpg",
  #   user_id: 2,
  #   price: 425
  # )
  file = URI.open("https://marvel-b1-cdn.bc0a.com/f00000000235903/www.galatiyachts.com/wp-content/uploads/82-Viking_Starboard-Profile2-700x467.jpg")
  puts "save worked"
  bmw = Vehicle.create(
    name: "Top G",
    description: "Follow the path of the TOP G and live his life for a few moments...",
    category: "Yacht",
    # image: "https://marvel-b1-cdn.bc0a.com/f00000000235903/www.galatiyachts.com/wp-content/uploads/82-Viking_Starboard-Profile2-700x467.jpg",
    user_id: 2,
    price: 999,
    address: "Islington, London"
  )
  bmw.image.attach(io: file, filename: "nes.png", content_type: "image/png")
  bmw.save
  # bmw = Vehicle.create(
    #   name: "Waver",
    #   description: "Yachts are usually large enough to have some form of sleeping quarters (cabin) on board for overnight trips as well as a kitchen (galley) and a bathroom (head). They are also large enough that they require more than human inputs (i.e rowing) to propel forward.",
    #   category: "Yacht",
    #   image: "https://boatstersblack.com/wp-content/uploads/2021/02/IMG_0268-700x467.jpg",
    #   user_id: 2,
    #   price: 300
    # )
# bmw = Vehicle.create(
#   name: "Titanic II",
#   description: "a yacht that includes high-end finishes and features and the latest in modern performance technology. The term ???luxury??? can precede any type of yacht, i.e. ???luxury motor yacht???, ???luxury sailing yacht???, etc.",
#   category: "Yacht",
#   image: "https://culturecdn.fra1.cdn.digitaloceanspaces.com/2015/01/Bavaria-Sport-400-HT-700x467.jpg",
#   user_id: 2,
#   price: 650
# )
# bmw = Vehicle.create(
#   name: "SuperYacht",
#   description: " a popular yacht style with deck space above the hull and living quarters below. The living quarters of a sedan yacht are enclosed and single-level.",
#   category: "Yacht",
#   image: "https://wp-media-yotlot.s3.amazonaws.com/wp-content/uploads/2021/11/16172803/Featured-Image-Master-V3-4-700x467.jpg",
#   user_id: 2,
#   price: 700
# )

file = URI.open("https://i.insider.com/4f4e31d169bedd167a000018?width=600&format=jpeg&auto=webp")
bmw = Vehicle.create!(
  name: "Ferrari F8",
  description: "The Ferrari F8 Tributo is the new mid-rear-engined sports car that represents the highest expression of the Prancing Horse's classic two-seater berlinetta. It is a car with unique characteristics and, as its name implies, is an homage to the most powerful V8 in Ferrari history.",
  category: "Car",
  user_id: user.id,
  price: 250,
  address: "Paris"
)
bmw.image.attach(io: file, filename: "nes.png", content_type: "image/png")
bmw.save

file = URI.open("https://i.insider.com/4f451284eab8ea2344000001?width=600&format=jpeg&auto=webp")
puts "save worked"
bmw = Vehicle.create(
  name: "Bugatti Veyron",
  description: "The Bugatti Veyron EB 16.4 is a mid-engine sports car, designed and developed in France by the Volkswagen Group and Bugatti and manufactured in Molsheim, France, by French automobile manufacturer Bugatti.",
  category: "Car",
  user_id: user.id,
  # image: "https://vezess2.p3k.hu/app/uploads/2022/01/mercedes-vision-eqxx-4-700x467.jpg",
  price: 200,
  address: "Manchester"
)
bmw.image.attach(io: file, filename: "nes.png", content_type: "image/png")
bmw.save

file = URI.open("https://marine-project.com/wp-content/uploads/2022/07/Custom-Line-Navetta-50-400x300.jpg")
puts "save worked"
bmw = Vehicle.create(
  name: "Poseidon",
  description: "The Poseidon features a long, sleek blue hull crowned by a white superstructure. The somewhat racy curves serve as a counterpart to the more serious-looking sections of the yacht, which include cutouts along the main and upper decks to allow strong visibility from the saloon and staterooms.",
  category: "Yacht",
  # image: "https://marvel-b1-cdn.bc0a.com/f00000000235903/www.galatiyachts.com/wp-content/uploads/2018/08/y85-exterior-700x467.jpeg",
  user_id: user.id,
  price: 250,
  address: "Dubai"
)
bmw.image.attach(io: file, filename: "nes.png", content_type: "image/png")
bmw.save

file = URI.open("https://ocean-yacht-charter.com/lib/plugins/thumb.php?src=https://ocean-yacht-charter.com/upload_data/site_photos/luxury-motor-yacht-sanlorenzo-sx88-ozone-charter-01.jpg&w=400h=250&zc=1")
puts "save worked"
bmw = Vehicle.create(
  name: "Fortuna",
  description: "The exterior includes a long, navy-blue hull with a white superstructure. The yacht???s diesel-electric propulsion involves an azimuth pod drive and gives the 436.4-footer a top end of 21 knots. ",
  category: "Yacht",
  # image: "https://images.unsplash.com/photo-1621277224630-81d9af65e40c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHlhY2h0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60",
  user_id: user.id,
  price: 400,
  address: "Cornwall"
)
bmw.image.attach(io: file, filename: "nes.png", content_type: "image/png")
bmw.save

booking = Booking.create!(
  date: 10102022,
  user_id: user.id,
  vehicle_id: Vehicle.first.id,
)


puts "User created"
puts "Vehicle created"
