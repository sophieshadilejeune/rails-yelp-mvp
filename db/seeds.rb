# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
uts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phono:  'Buzzy destination for Indian street food in Bombay-style vintage decor.',
    stars:        5,
    chef:         'Dordon Gamsey'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    description:  'Pizzeria with industrial looks, serving rustic pizza and antipasti.',
    stars:        4,
    chef:         'Vincent LaFromage'
  },
  {
    name:         'Miznon',
    address:      'Melbs',
    description:  'Delicious, Israeli streed food, yum yum',
    stars:         5,
    chef:         'Gin Atkins'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
