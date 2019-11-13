# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database of restaurants...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '03 84 57 09 65',
    category:     'chinese'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number: '03 45 67 09 45',
    category:     'belgian'
  },
  {
    name:         'Chez Sophie',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number:  '03 45 67 45 67',
    category:      'japanese'
  },
    {
    name:         'LeRestoBonjour',
    address:      '5 rue des pages',
    phone_number:  '03 45 67 09 45',
    category:      'italian'
  },
    {
    name:         'MiamMiam',
    address:      '12 quai de la Rapee',
    phone_number:  '03 34 56 97 32',
    category:      'french'
  },
]

Restaurant.create!(restaurants_attributes)
puts 'Finished! for restaurants'

# ------------
puts 'Cleaning database of reviews...'
Review.destroy_all

puts 'Creating reviews...'
reviews_attributes = [
  {
    content:         'What a good restaurant',
    rating:           5,
    restaurant_id:    1
  },
    {
    content:         'What a great restaurant',
    rating:           4,
    restaurant_id:    1
  },
    {
    content:         'What a good restaurant',
    rating:           3,
    restaurant_id:    2
  },
      {
    content:         'What an amazing restaurant',
    rating:           4,
    restaurant_id:    2
  },
]

Review.create!(reviews_attributes)
puts 'Finished! for reviews'
