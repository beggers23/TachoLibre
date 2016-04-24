# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Item.create([
  # Nachos
  {category:'nacho',name:'Meaty' ,price:3},
  {category:'nacho',name:'Fishy' ,price:3},
  {category:'nacho',name:'Cheesy' ,price:3},
  {category:'nacho',name:'Beefy' ,price:3},
  {category:'nacho',name:'Beany' ,price:3},
  {category:'nacho',name:'Veggy' ,price:3},

  # Tacos
  {category:'taco',name:'Steak' ,price:1},
  {category:'taco',name:'Chicken' ,price:1},
  {category:'taco',name:'Pork' ,price:1},
  {category:'taco',name:'Lenuga' ,price:1},
  {category:'taco',name:'Al Pastor' ,price:1},
  {category:'taco',name:'Veggie' ,price:1},

  # Alcoholos
  {category:'booze',name:'Modelo' ,price:2},
  {category:'booze',name:'Corona' ,price:2},
  {category:'booze',name:'Tacate' ,price:2},
  {category:'booze',name:'Patron' ,price:4},
  {category:'booze',name:'Margarita' ,price:4},
  {category:'booze',name:'Sangria' ,price:4}
  ])

#Single Admin
Server.create({name:'admin', password:'admin',admin:true})
