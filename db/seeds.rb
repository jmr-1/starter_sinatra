Role.destroy_all
Movie.destroy_all
Actor.destroy_all

godzilla = Movie.create(title: "Godzilla", length: 120, genre: "Action")
star_wars = Movie.create(title: "Star Wars", length: 90, genre: "Science-Fiction")
comedy = Movie.create(title: "Wedding Crashers", length: 150, genre: "Comedy")
horror = Movie.create(title: "Silent Hill", length: 200, genre: "Horror")

bruce = Actor.create(name: "Bruce Willis", age: 50, experience: 30)
sheen = Actor.create(name: "Charlie Sheen", age: 60, experience: 20)
hammill = Actor.create(name: "Mark Hammill", age: 65, experience: 25)

star_wars.actors << bruce 
star_wars.actors << hammill
godzilla.actors << sheen
godzilla.actors << hammill
comedy.actors << bruce 
comedy.actors << sheen 
horror.actors << hammill
horror.actors << bruce 

