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

puts 'Creating 10 fake users...'

10.times do
  user = User.new(
    first_name: Faker::Name.unique.name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: "password"
  )

  user.save!
end 

locations = ["Melbourne", "Los Angeles", "Singapore", "Beijing", "Bali", "New York", "Dubai", "London"]

puts 'Creating 100 fake jets...'
100.times do
  jet = Jet.new(
    name: Faker::Name.unique.name,
    description: Faker::Movies::StarWars.quote,
    pilot_name: Faker::Name.unique.name,
    capacity: rand(1..10),
    origin: locations.sample,
    price: rand(10000..50000),
    user_id: User.all.sample.id
  )

  jet.save!
end
