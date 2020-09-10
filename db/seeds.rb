require 'faker'

puts "Cleaning data..."

Booking.destroy_all
User.destroy_all
Jet.destroy_all

puts 'Creating 1 default  user...'

default_user = User.new(
    first_name: "Annmarie",
    last_name: "De Silva",
    email: "user@user.com",
    password: "password"
  )

default_user.save!

puts 'Creating 10 users...'

user_1 = User.new(
    first_name: "Taylor",
    last_name: "Swift",
    email: "taylorswift@user.com",
    password: "password"
  )

user_1.save!

user_2 = User.new(
    first_name: "Bill",
    last_name: "Gates",
    email: "billgates@user.com",
    password: "password"
  )

user_2.save!

user_3 = User.new(
    first_name: "Tiger",
    last_name: "Woods",
    email: "tigerwoods@user.com",
    password: "password"
  )

user_3.save!

user_4 = User.new(
    first_name: "Beyonce",
    last_name: "Knowles",
    email: "beyonceknowles@user.com",
    password: "password"
  )

user_4.save!

user_5 = User.new(
    first_name: "David",
    last_name: "Beckham",
    email: "davidbeckham@user.com",
    password: "password"
  )

user_5.save!

user_6 = User.new(
    first_name: "Justin",
    last_name: "Bieber",
    email: "justinbieber@user.com",
    password: "password"
  )

user_6.save!

user_7 = User.new(
    first_name: "Tom",
    last_name: "Cruise",
    email: "tomcruise@user.com",
    password: "password"
  )

user_7.save!

user_8 = User.new(
    first_name: "Elon",
    last_name: "Musk",
    email: "elonmusk@user.com",
    password: "password"
  )

user_8.save!

user_9 = User.new(
    first_name: "Jeff",
    last_name: "Bezos",
    email: "jeffbezos@user.com",
    password: "password"
  )

user_9.save!

user_10 = User.new(
    first_name: "Dwayne 'The Rock'",
    last_name: "Johnson",
    email: "therock@user.com",
    password: "password"
  )

user_10.save!

user_11 = User.new(
    first_name: "DJ",
    last_name: "Khaled",
    email: "djkhaled@user.com",
    password: "password"
  )

user_11.save!

user_12 = User.new(
    first_name: "LeBron",
    last_name: "James",
    email: "lebronjames@user.com",
    password: "password"
  )

user_12.save!

locations = ["Melbourne", "Los Angeles", "Singapore", "Beijing", "Bali", "New York", "Dubai", "London"]
pilot_name = ["Brad Pitt", "Mike Tyson", "Channing Tatum", "Ryan Gosling", "Michael B. Jordan", "Harry Styles", "Josh Hutcherson", "Joseph Gordon-Levitt", "Stephen Amel", "Chase Crawford", "Robert Downey Jr.", "
Adam Levine", "Leonardo DiCaprio", "Ian Somerhalder", "Liam Hemsworth", "Chris Hemsworth"]

puts 'Creating 20 fake jets...'

  jet = Jet.new(
    name: Faker::Name.unique.name,
    description: 
    pilot_name: pilot_name.sample,
    capacity: rand(1..10),
    origin: locations.sample,
    price: rand(10000..50000),
    user_id: User.all.sample.id
  )

  jet.save!

