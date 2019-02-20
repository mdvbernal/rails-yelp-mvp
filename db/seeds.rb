# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    category:     'chinese',
    phone_number: '03 405 9 356'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    category:     'italian',
    phone_number: '030 405 356'
  },
  {
    name:         'Pizza West',
    address:      '32A Shoreditch Low St, London E2 9PQ',
    category:     'japanese',
    phone_number: '03 9405 356'
  },
  {
    name:         'Pizza North',
    address:      '92A Shoreditch Low St, Lisbon E2 1PQ',
    category:     'french',
    phone_number: '037 405 356'
  },
  {
    name:         'Pizza North West',
    address:      '92A Shoreditch Low St, Lisbon E2 1PQ',
    category:     'chinese',
    phone_number: '034 405 356'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
