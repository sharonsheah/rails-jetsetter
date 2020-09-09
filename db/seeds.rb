require 'faker'

puts "Cleaning data..."

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

puts 'Creating 10 fake jets...'
100.times do
  jet = Jet.new(
    name: Faker::Movies::StarWars.character,
    description: Faker::Movies::StarWars.quote,
    pilot_name: Faker::Name.unique.name,
    capacity: rand(1..10),
    origin: Faker::Nation.capital_city,
    price: rand(10000..50000),
    user_id: User.all[rand(0..10)].id
  )

  jet.save!
end
