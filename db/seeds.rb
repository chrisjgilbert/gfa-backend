# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


eateries = [
   {name: 'Pizza Express'},
    {name: 'Honest Burgers'},
    {name: 'Bone Daddy‘s'},
    {name: 'River Cafe'}
]

cuisines = [
  {name: 'Italian'},
  {name: 'French'},
  {name: 'Burgers'}
]

eateries.each { |eatery| Restaurant.create(eatery) }
cuisines.each { |cuisine| Cuisine.create(cuisine) }