# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

eateries = [
  { name: 'Pizza Express', address_id: Address.create!(building: '34 Northcote Road', city: 'London', country: 'UK').id },
  { name: 'Honest Burgers', address_id: Address.create!(building: '534 Northcote Road', city: 'London', country: 'UK').id },
  { name: 'Bone Daddy‘s', address_id: Address.create!(building: '12 Battersea Rise', city: 'London', country: 'UK').id },
  { name: 'River Cafe', address_id: Address.create!(building: '314 Fulham Road', city: 'London', country: 'UK').id }
]

cuisines = [
  { name: 'Italian' },
  { name: 'French' },
  { name: 'Burgers' }
]

eateries.each { |eatery| Restaurant.create(eatery) }
cuisines.each { |cuisine| Cuisine.create(cuisine) }
