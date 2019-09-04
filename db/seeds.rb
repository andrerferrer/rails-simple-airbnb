# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Flat.destroy_all

def price
  rand(50..999)
end


4.times do
  Flat.create!(
    name: Faker::TvShows::GameOfThrones.character,
    address: Faker::TvShows::GameOfThrones.city,
    description: Faker::TvShows::GameOfThrones.quote,
    price_per_night: price,
    number_of_guests: rand(1..10)
  )
end

Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)
