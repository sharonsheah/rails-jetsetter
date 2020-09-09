require 'faker'

puts 'Creating 1 default  user...'

default_user = User.new(
    first_name: "Annmarie",
    last_name: "De Silva",
    email: "user@user.com"
  )

default_user.save!

puts 'Creating 10 fake users...'

10.times do
  user = User.new(
    first_name: Faker::Name.unique.name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email
  )

  user.save!
end 

puts 'Creating 10 fake jets...'
100.times do
  jet = Jet.new(
    name: Faker::Movies::StarWars.character,
    description: Faker::Movies::StarWars.quoteFaker::Lorem.sentence,
    pilot_name: Faker::Name.unique.name,
    capacity: rand(1..10),
    origin: Faker::Nation.capital_city,
    price: rand(10000..50000),
    user_id: User.all[rand(0..3)].id
  )

  jet.save!
end
