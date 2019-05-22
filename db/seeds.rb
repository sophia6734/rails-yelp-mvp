# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
CATEGORIES = %w[chinese italian japanese french belgian].freeze
# Examples:
#puts 'seeding'
# Examples:
10.times do
  Restaurant.create(
    name: Faker::Name.first_name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: CATEGORIES.sample
  )
end

10.times do
  Review.create(
    content: Faker::Lorem.word,
    rating: rand(0..5),
    restaurant_id: rand(1..10)
  )
end


puts 'end of seeding'
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
