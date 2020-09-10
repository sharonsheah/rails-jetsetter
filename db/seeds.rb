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

puts 'Creating 12 users...'

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

locations = ["Melbourne", "Los Angeles", "Singapore", "Beijing", "New York", "Dubai", "London", , "Paris", "Tokyo", "Barcelona"]
pilot_name = ["Brad Pitt", "Mike Tyson", "Channing Tatum", "Ryan Gosling", "Michael B. Jordan", "Harry Styles", "Josh Hutcherson", "Joseph Gordon-Levitt", "Stephen Amel", "Chase Crawford", "Robert Downey Jr.", "
Adam Levine", "Leonardo DiCaprio", "Ian Somerhalder", "Liam Hemsworth", "Chris Hemsworth"]

puts 'Creating 20 jets...'

jet_1 = Jet.new(
  name: "Airbus ACJ319neo Infinito",
  description: "A luxe collaboration between Airbus Corporate Jets and Italian supercar maker Automobili Pagani, this jet is the winged equivalent of a top-down convertible supercar. Marrying art and ultra-modern technology, the ACJ319neo Infinito’s leather, wood and carbon-fibre cabin includes a bedroom, bathroom, cinema, dining area and lounge. But its most extravagant feature is its innovative ‘sky ceiling’, which can bring a live view of the sky above the aircraft into the cabin, or display other images, while hurtling through the air at up to 0.82 the speed of sound."
  pilot_name: pilot_name.sample,
  capacity: 8,
  origin: locations.sample,
  price: rand(20000..100000),
  user_id: User.all.sample.id
)

jet_1.save!

jet_2 = Jet.new(
  name: "Bombardier Challenger 350",
  description: "The range of the Private Jet Bombardier Challenger 350 is one of the largest in its class. Connect by nonstop flight all the airports of Europe and the Mediterranean basin like Luxor, Santorini, Bern, Rovaniemi, Marrakech, Reykjavik, Istanbul, Tel-Aviv, Lome, Algiers, Moscow, Tangier, Figari, Saint-Petersburg, Riga, Faro, Comisso, Vilnius, Rzeszow, Stuttgart, Geneva. The spacious and comfortable cabin of the Private Jet Bombardier Challenger 350 is perfect for your private travel as well as your business trips. Its large luggage compartment can accommodate numerous suitcases as well as skis and golf bags."
  pilot_name: pilot_name.sample,
  capacity: rand(1..10),
  origin: locations.sample,
  price: rand(10000..50000),
  user_id: User.all.sample.id
)

jet_2.save!

jet_3 = Jet.new(
  name: "Embraer Legacy",
  description: "Combine high performance and economy! Very recent, this jet was designed to meet the demands of the business world in terms of comfort and costs. The Embraer Legacy spacious cabin allows you to travel in total privacy with your team members and guests. Whether you’re going from Brest to Lagos or from Montpellier to Tehran, your travel or relaxation time is truly optimized, at your convenience."
  pilot_name: pilot_name.sample,
  capacity: rand(1..10),
  origin: locations.sample,
  price: rand(10000..50000),
  user_id: User.all.sample.id
)

jet_3.save!

jet_4 = Jet.new(
  name: "Boeing 747-8 Intercontinental BBJ",
  description: "As stunning as the Dreamliner may be, nothing compares with the “Queen of the Skies.” One lucky customer received his very own personalised Boeing 747-8I private jet. At this year’s prices, the 747 before any customisation work costs $US403 million. The interior boasts nearly 4,800 square feet of space, roughly the same as your average McMansion. The plane has a full office, a bedroom and a stately dining room, which can be converted into a corporate boardroom"
  pilot_name: pilot_name.sample,
  capacity: rand(1..10),
  origin: locations.sample,
  price: rand(10000..50000),
  user_id: User.all.sample.id
)

jet_4.save!

jet_5 = Jet.new(
  name: "Dassault Falcon 900EX",
  description: "The whole world at your fingertips! Charter the Dassault Falcon 900, prestigious private jet, connect to Montreal from Paris or from Dubai to London without a stopover; organize a decisive conference with team members or with important clients. On board sleep comfortably in seats fully reclining to 180° with real bed sheets to arrive in top form even after a long flight. And thanks to its exceptional performance, the Dassault Falcon 900 can land at many airports and take you right up to your final destination."
  pilot_name: pilot_name.sample,
  capacity: rand(1..10),
  origin: locations.sample,
  price: rand(10000..50000),
  user_id: User.all.sample.id
)

jet_5.save!

jet_6 = Jet.new(
  name: "Embraer Manhattan",
  description: "An ode to New York’s Art Deco era, the sophisticated Embraer Manhattan airship looks like something straight out of The Great Gatsby. A distinctive metallic mural of the Manhattan skyline greets guests at the entry while rich mahogany wood panels, and brass and gold finishings flow through the cabin. From the luxury lounge to the iconic Cloud Club bar and the Crystal Room dining area, this private vehicle provides a sky-high escape to 1920s decadence."
  pilot_name: pilot_name.sample,
  capacity: 19,
  origin: locations.sample,
  price: rand(10000..50000),
  user_id: User.all.sample.id
)

jet_6.save!

jet_7 = Jet.new(
  name: "Bombardier Global Express",
  description: "To go farther and faster! Ultra modern, this business jet is one of the highest performers in the world: it can fly for 14 hours without a stopover like for example from Bordeaux to Seoul or Reims to Singapore and can land with no difficulty on the most difficult runways. The Bombardier Global Express spacious and enjoyable cabin offers great comfort, conducive to work and rest. It is a prestigious plane designed to blend well-being and productivity."
  pilot_name: pilot_name.sample,
  capacity: rand(1..10),
  origin: locations.sample,
  price: rand(10000..50000),
  user_id: User.all.sample.id
)

jet_7.save!

jet_8 = Jet.new(
  name: "Embraer Lineage 1000E",
  description: "To say this ultra-large luxury private jet is customisable would be a grand understatement. The team at Embraer Executive Jets offer thousands of combinations for the model’s 74 square metres of living space and five interior zones, allowing clients to create their personalised aerial home away from home. This includes a light and airy window-filled cabin with a 42-inch television, dining room and lounge, and a queen bedroom with en suite, complete with the industry’s largest shower with a breathtaking view."
  pilot_name: pilot_name.sample,
  capacity: 19,
  origin: locations.sample,
  price: rand(10000..50000),
  user_id: User.all.sample.id
)

jet_8.save!

jet_9 = Jet.new(
  name: "Gulfstream V",
  description: "Comfort is a way of life! Performance and elegance are the first qualities of the Gulfstream 550 long-haul jet. Its spacious cabin offers separate areas enabling you to devote time to work or relaxation: a key meeting or a friendly meal, your trip is optimized and affords you an ideal context for business, protected from indiscreet onlookers and eavesdropping. No fatigue or lost time, you arrive at destination fully operational."
  pilot_name: pilot_name.sample,
  capacity: rand(1..10),
  origin: locations.sample,
  price: rand(10000..50000),
  user_id: User.all.sample.id
)

jet_9.save!

jet_10 = Jet.new(
  name: "Piaggio P180 Avanti",
  description: "This business plane with avant-garde design doesn’t go unnoticed and still goes almost as fast as a business jet. The Piaggio P180 Avanti cabin, equipped with a restroom, offers exceptional headroom for a plane in its category. You can make trips such as Paris le Bourget to London City then Chambery in the same day. Silent, spacious, economical and fast, the Piaggio P180 Avanti is an aircraft of choice for businessmen the world over. To try it is to make it yours!"
  pilot_name: pilot_name.sample,
  capacity: rand(1..10),
  origin: locations.sample,
  price: rand(10000..50000),
  user_id: User.all.sample.id
)

jet_10.save!

jet_11 = Jet.new(
  name: "Dassault Falcon 20",
  description: "Performance, peace of mind and reliability! This business jet is perfect for all your trips in Europe and around the Mediterranean basin: comfortable and economical, the Dassault Falcon 20 enables a management or engineering team to hold a meeting in North Africa, visit a factory in Eastern Europe in the afternoon and get back in the evening for dinner with family or friends. And the travel time is wisely spent to continue working or to relax in total privacy."
  pilot_name: pilot_name.sample,
  capacity: rand(1..10),
  origin: locations.sample,
  price: rand(10000..50000),
  user_id: User.all.sample.id
)

jet_11.save!


jet_12 = Jet.new(
  name: "Beechcraft King Air 350",
  description: "Fast and economical, the Beechcraft King Air 350 is a modern business aircraft. Thanks to its excellent performance you reach with direct flights numerous airports in Europe, even those who are not serviced by regular airlines. You choose your schedule to travel for example from Paris le Bourget to Maastricht, from Angouleme to Memmingen or from Avignon to Nancy. On board you will enjoy a moment of privacy, properly seated in his comfortable cabin. Modern and efficient business aircraft, the Beechcraft King Air 350 is environmentally friendly. In fact it consumes less fuel and emits less carbon dioxide."
  pilot_name: pilot_name.sample,
  capacity: rand(1..10),
  origin: locations.sample,
  price: rand(10000..50000),
  user_id: User.all.sample.id
)

jet_12.save!

jet_13 = Jet.new(
  name: "Legacy 600",
  description: "A popular choice for partygoers is to take an early champagne supper at Soho’s iconic Bob Bob Ricard, seamlessly transfering to London Luton or London City, and chartering direct to Ibiza’s classic disco-house jamboree Glitterbox at Hi Ibiza. And, aboard the Legacy 600, a group of 13 can be taken to the party island at dizzying speed and in supreme comfort. It’s got more space than any other business jet in its category — giving you plenty of room to party in the sky. "
  pilot_name: pilot_name.sample,
  capacity: rand(1..10),
  origin: locations.sample,
  price: rand(10000..50000),
  user_id: User.all.sample.id
)

jet_13.save!

jet_14 = Jet.new(
  name: "Gulfstream G-550",
  description: "The Gulfstream G-550 flies at more than 92% of the speed of sound and can offer up to 18 selected guests the premium experience of modern luxury. It also comes complete with four distinct living areas — including a kitchen for making those all-important in-flight cocktails. The G500 features bespoke cabins with seating tailored to the needs of the customer. The aircraft also has high-speed internet that’s 30 times as fast as that of its current competitors."
  pilot_name: pilot_name.sample,
  capacity: 18,
  origin: locations.sample,
  price: rand(10000..50000),
  user_id: User.all.sample.id
)

jet_14.save!

jet_15 = Jet.new(
  name: "Legacy 650",
  description: "The Legacy 650 is the perfect way to get there. Fully equipped to take a group of thirteen passengers to their destination of choice, this jet is very spacious compared to other aircraft in its class, featuring three large, separate zones."
  pilot_name: pilot_name.sample,
  capacity: 13,
  origin: locations.sample,
  price: rand(10000..50000),
  user_id: User.all.sample.id
)

jet_15.save!

jet_16 = Jet.new(
  name: "Bombardier Global 7500",
  description: "A reflection of its extended length and longer endurance, the iconic Bombardier Global 7000 has been rebranded as the Global 7500 – becoming the world’s largest and longest private jet. Inside its 39-metre body are four spacious living areas that offer limitless possibilities for personalisation, including a fully equipped kitchen, bedroom, bathroom and entertainment lounge. While the first eight planes will make their debut in 2019, it’s no wonder there’s a waiting list until 2021."
  pilot_name: pilot_name.sample,
  capacity: 19,
  origin: locations.sample,
  price: rand(10000..50000),
  user_id: User.all.sample.id
)

jet_16.save!

jet_17 = Jet.new(
  name: "Gulfstream G650ER",
  description: "The G650ER is Gulfstream’s flagship product. It has a range of more than 7,500 miles, meaning it can complete flights across the Pacific Ocean. The aircraft is packed with rich leathers, fine wood veneers, and stylish stonework. The entire custom cabin can be controlled using a smartphone app."
  pilot_name: pilot_name.sample,
  capacity: rand(1..10),
  origin: locations.sample,
  price: rand(10000..50000),
  user_id: User.all.sample.id
)

jet_17.save!

jet_18 = Jet.new(
  name: "Bombardier Global 7000",
  description: "The Global 7000 is designed to be the ultimate long-distance, purpose-built private jet. The cabin can be configured in a variety of ways, including a with full dining room and a multimedia theatre. The Global 7000 is even available with a private bedroom. It’s an important option, given the plane’s more than 8,500-mile range — that means nonstop from New York to Sydney, Australia."
  pilot_name: pilot_name.sample,
  capacity: rand(1..10),
  origin: locations.sample,
  price: rand(10000..50000),
  user_id: User.all.sample.id
)

jet_18.save!

jet_19 = Jet.new(
  name: "Embraer Lineage 1000E",
  description: "This is the first of the converted airliners on the list. It’s based on the popular Embraer E190 regional airliner. The spacious 1000E can be configured with a master bedroom and a walk-in shower. If you are extra bold, however, Embraer’s design chief, Jay Beever, will gladly offer you some of his truly over-the-top interior concepts — like the Kyoto Airship and its astonishing skylights or the Hollywood Airship, which conveys the style, glamour, and luxury of Tinseltown in the 1930s."
  pilot_name: pilot_name.sample,
  capacity: rand(1..10),
  origin: locations.sample,
  price: rand(10000..50000),
  user_id: User.all.sample.id
)

jet_19.save!

jet_20 = Jet.new(
  name: "Boeing 787-8 BBJ",
  description: "This is a state-of-the-art, $US224 million carbon-composite airliner. In 2016, China’s HNA Group spent an additional $US100 million to turn one into a private jet — or, as Boeing calls it, a BBJ, or Boeing Business Jet. The interior is a whopping 2,400 square feet. That means space for you and 39 of your closest friends. There’s also a master suite with a California king bed, a walk-in closet and a master bath with a double-size shower and heated marble floors."
  pilot_name: pilot_name.sample,
  capacity: rand(1..10),
  origin: locations.sample,
  price: rand(10000..50000),
  user_id: User.all.sample.id
)

jet_20.save!
