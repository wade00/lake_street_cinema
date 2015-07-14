# Movies
movie_array = [
  {
    title: "Jurassic Park",
    year: "1993",
    director: "Steven Spielberg",
    runtime: 127,
    genre: "Adventure",
    rating: "PG-13",
    synopsis: "During a preview tour, a theme park suffers a major power breakdown that allows its cloned dinosaur exhibits to run amok.",
    image: "http://ak-hdl.buzzfed.com/static/2014-08/12/12/enhanced/webdr10/enhanced-14020-1407861668-13.jpg"
  },
  {
    title: "Time Bandits",
    year: "1981",
    director: "Terry Gilliam",
    runtime: 110,
    genre: "Adventure",
    rating: "PG",
    synopsis: "A young boy accidentally joins a band of dwarves as they jump from era to era looking for treasure to steal.",
    image: "http://images.fandango.com/MDCsite/images/featured/201412/TimeBandits_quad_UK_Gilliam-1.jpg"
  },
  {
    title: "Wayne's World",
    year: "1992",
    director: "Penelope Spheeris",
    runtime: 94,
    genre: "Comedy",
    rating: "PG-13",
    synopsis: "Two slacker friends try to promote their public-access cable show.",
    image: "http://trnwired.org/wp-content/uploads/2014/02/waynes-world-poster.jpg"
  },
  {
    title: "Rock 'n' Roll High School",
    year: "1979",
    director: "Allan Arkush",
    runtime: 93,
    genre: "Comedy",
    rating: "PG",
    synopsis: "A group of rock-music-loving students, with the help of the Ramones, take over their school to combat its newly installed oppressive administration.",
    image: "http://filmpulse.net/wp-content/uploads/2013/03/rock-n-roll-high-school-movie-poster-1979-1020168886.jpg"
  },
  {
    title: "Gone Girl",
    year: "2014",
    director: "David Fincher",
    runtime: 149,
    genre: "Drama",
    rating: "R",
    synopsis: "With his wife's disappearance having become the focus of an intense media circus, a man sees the spotlight turned on him when it's suspected that he may not be innocent.",
    image: "https://maryloudriedger2.files.wordpress.com/2014/10/gone-girl-2014-film-poster.jpg"
  },
  {
    title: "Brazil",
    year: "1985",
    director: "Terry Gilliam",
    runtime: 132,
    genre: "Sci-Fi",
    rating: "R",
    synopsis: "A bureaucrat in a retro-future world tries to correct an administrative error and himself becomes an enemy of the state.",
    image: "http://assets.flicks.co.nz/images/movies/poster/89/8973ba741e7bd6450d8023552f43728e_500x735.jpg"
  },
  {
    title: "Up",
    year: "2009",
    director: "Pete Docter",
    runtime: 96,
    genre: "Animation",
    rating: "PG",
    synopsis: "Seventy-eight year old Carl Fredricksen travels to Paradise Falls in his home equipped with balloons, inadvertently taking a young stowaway.",
    image: "http://www.movie-poster-artwork-finder.com/posters/up-poster-artwork-edward-asner-christopher-plummer-jordan-nagai.jpg"
  },
  {
    title: "WALL-E",
    year: "2008",
    director: "Andrew Stanton",
    runtime: 98,
    genre: "Animation",
    rating: "G",
    synopsis: "In the distant future, a small waste collecting robot inadvertently embarks on a space journey that will ultimately decide the fate of mankind.",
    image: "https://www.movieposter.com/posters/archive/main/83/MPW-41812"
  },
  {
    title: "The Lord of the Rings: The Return of the King",
    year: "2003",
    director: "Peter Jackson",
    runtime: 201,
    genre: "Adventure",
    rating: "PG-13",
    synopsis: "Gandalf and Aragorn lead the World of Men against Sauron's army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.",
    image: "http://img3.wikia.nocookie.net/__cb20150203041337/lotr/images/b/ba/Rie.jpg"
  },
  {
    title: "Pi",
    year: "1998",
    director: "Darren Aronofsky",
    runtime: 84,
    genre: "Drama",
    rating: "R",
    synopsis: "A paranoid mathematician searches for a key number that will unlock the universal patterns found in nature.",
    image: "http://images.moviepostershop.com/pi-movie-poster-1998-1020474533.jpg"
  }
]

movie_array.each do |movie_hash|
  movie = Movie.new
  movie.title = movie_hash[:title]
  movie.year = movie_hash[:year]
  movie.director = movie_hash[:director]
  movie.runtime = movie_hash[:runtime]
  movie.genre = movie_hash[:genre]
  movie.rating = movie_hash[:rating]
  movie.synopsis = movie_hash[:synopsis]
  movie.image = movie_hash[:image]
  movie.save
end

puts "There are now #{Movie.count} movies in the database."

# Theaters
theater_array = [
  {
    number: "1",
    capacity: 100
  },
  {
    number: "2",
    capacity: 75
  },
  {
    number: "3",
    capacity: 80
  },
  {
    number: "4",
    capacity: 50
  },
  {
    number: "5",
    capacity: 100
  },
]

theater_array.each do |theater_hash|
  theater = Theater.new
  theater.title = theater_hash[:title]
  theater.year = theater_hash[:year]
  theater.save
end

puts "There are now #{Theater.count} theaters in the database."
