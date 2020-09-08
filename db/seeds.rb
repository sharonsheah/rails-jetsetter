require 'faker'



puts 'Creating 10 fake jets...'
10.times do
  jet = Jet.new(
    name: Faker::TvShows::GameOfThrones.city,
    description: Faker::Lorem.sentence,
    pilot_name: Faker::Name.unique.name,
    capacity: rand(1..10),
    origin: Faker::Address.city,
    price: rand(10000..50000),
    user_id: User.all[rand(0..3)].id
  )

  jet.save!
end
    