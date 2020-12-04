# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

eateries = [
  { 
    name: 'Pizza Express',
    address_id: Address.create!(building: '34 Northcote Road', city: 'London', country: 'UK').id,
    cuisines: [Cuisine.find_or_create_by!(name: 'Pizza')]
  },
  { 
    name: 'Franco Manca',
    address_id: Address.create!(building: '112 Balham Road', city: 'London', country: 'UK').id,
    cuisines: [Cuisine.find_or_create_by!(name: 'Pizza')]
  },
  { 
    name: 'Bodeans',
    address_id: Address.create!(building: '3234 Northcote Road', city: 'London', country: 'UK').id,
    cuisines: [Cuisine.find_or_create_by!(name: 'Burgers')]
  },
  { 
    name: 'Honest Burgers',
    address_id: Address.create!(building: '1 Battersea Rise', city: 'London', country: 'UK').id,
    cuisines: [Cuisine.find_or_create_by!(name: 'Burgers')]
  },
  { 
    name: 'Pho',
    address_id: Address.create!(building: '43 Battersea Rise', city: 'London', country: 'UK').id,
    cuisines: [Cuisine.find_or_create_by!(name: 'Burgers')]
  },
  { 
    name: 'Manchester Munch',
    address_id: Address.create!(building: '1 Old Traffor', city: 'Manchester', country: 'UK').id,
    cuisines: [Cuisine.find_or_create_by!(name: 'Burgers')]
  },
]

eateries.each { |eatery| Restaurant.create!(name: eatery[:name], address_id: eatery[:address_id]) }
