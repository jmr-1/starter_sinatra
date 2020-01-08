godzilla = Movie.create(title: "Godzilla", length: 120, genre: "Action")
star_wars = Movie.create(title: "Star Wars", length: 90, genre: "Science-Fiction")
comedy = Movie.create(title: "Wedding Crashers", length: 150, genre: "Comedy")
horror = Movie.create(title: "Silent Hill", length: 200, genre: "Horror")

bruce = Actor.create(name: "Bruce Willis", age: 50, experience: 30)
sheen = Actor.create(name: "Charlie Sheen", age: 60, experience: 20)
hammill = Actor.create(name: "Mark Hammill", age: 65, experience: 25)

bruce.movies = godzilla 
bruce.save 
bruce.movies = star_wars 
bruce.save

sheen.movies = comedy
sheen.save
sheen.movies = horror 
sheen.save

hammill.movies = star_wars
hammill.save
hammill.movies = godzilla
hammill.save 
