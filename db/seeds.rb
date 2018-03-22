# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Creating restaurants...'
Restaurant.create!({
  name: "Mamma Roma",
  address: "Oberkampf, Paris",
  category: "italian"
})
Restaurant.create!({
  name: "Le saut du crapaud",
  address: "Alesia, Paris",
  category: "french"
})
Restaurant.create!({
  name: "The Petite Coree",
  address: "West Hampstead, London",
  category: "japanese"
})
Restaurant.create!({
  name: "Le dernier metro",
  address: "Dupleix, Paris",
  category: "french"
})
Restaurant.create!({
  name: "Pizza Uno",
  address: "Downtown, Chicago",
  category: "italian"
})
puts 'Finished!'
