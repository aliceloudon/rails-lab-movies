# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Showing.delete_all
Cinema.delete_all
Movie.delete_all
Actor.delete_all

m1 = Movie.create({
  title: "Forrest Gump"
})

m2 = Movie.create({
  title: "Guardians of the Galaxy - Volume 2"
})

m3 = Movie.create({
  title: "Their Finest"
})

Actor.create({
  name: "Tom Hanks",
  movie: m1
})

Actor.create({
  name: "Chris Pratt",
  movie: m2
})

Actor.create({
  name: "Gemma Arterton",
  movie: m3
  })

Actor.create({
  name: "Bill Nighy",
  movie: m3
})

c1 = Cinema.create({
  name: "Dominion",
  location: "Edinburgh"
})

c2 = Cinema.create({
  name: "Cameo",
  location: "Edinburgh"
})

Showing.create({
  time: "2017-05-09 [10:00:00]",
  movie: m1,
  cinema: c1
})

Showing.create({
  time: "2017-05-11 [18:00:00]",
  movie: m2,
  cinema: c1 
})

Showing.create({
  time: "2017-05-10 [20:30:00]",
  movie: m3,
  cinema: c2
})