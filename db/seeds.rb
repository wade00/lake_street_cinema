%w(Movie Order Showtime Theater).each { |t| t.constantize.destroy_all }

# Theaters
theater_array = [
  {
    number: "1",
    capacity: 50
  },
  {
    number: "2",
    capacity: 40
  },
  {
    number: "3",
    capacity: 40
  },
  {
    number: "4",
    capacity: 30
  },
  {
    number: "5",
    capacity: 50
  },
  {
    number: "6",
    capacity: 50
  },
  {
    number: "7",
    capacity: 40
  },
  {
    number: "8",
    capacity: 40
  },
  {
    number: "9",
    capacity: 30
  },
  {
    number: "10",
    capacity: 50
  }
]

theater_array.each do |theater_hash|
  theater = Theater.new
  theater.number = theater_hash[:number]
  theater.capacity = theater_hash[:capacity]
  theater.save
end

puts "There are now #{Theater.count} theaters in the database."

theater1 = Theater.find_by(number: "1")
theater2 = Theater.find_by(number: "2")
theater3 = Theater.find_by(number: "3")
theater4 = Theater.find_by(number: "4")
theater5 = Theater.find_by(number: "5")
theater6 = Theater.find_by(number: "6")
theater7 = Theater.find_by(number: "7")
theater8 = Theater.find_by(number: "8")
theater9 = Theater.find_by(number: "9")
theater10 = Theater.find_by(number: "10")

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
    image: "http://ak-hdl.buzzfed.com/static/2014-08/12/12/enhanced/webdr10/enhanced-14020-1407861668-13.jpg",
    theater: theater1
  },
  {
    title: "Time Bandits",
    year: "1981",
    director: "Terry Gilliam",
    runtime: 110,
    genre: "Adventure",
    rating: "PG",
    synopsis: "A young boy accidentally joins a band of dwarves as they jump from era to era looking for treasure to steal.",
    image: "http://i.jeded.com/i/time-bandits.15611.jpg",
    theater: theater2
  },
  {
    title: "Wayne's World",
    year: "1992",
    director: "Penelope Spheeris",
    runtime: 94,
    genre: "Comedy",
    rating: "PG-13",
    synopsis: "Two slacker friends try to promote their public-access cable show.",
    image: "http://trnwired.org/wp-content/uploads/2014/02/waynes-world-poster.jpg",
    theater: theater3
  },
  {
    title: "Rock 'n' Roll High School",
    year: "1979",
    director: "Allan Arkush",
    runtime: 93,
    genre: "Comedy",
    rating: "PG",
    synopsis: "A group of rock-music-loving students, with the help of the Ramones, take over their school to combat its newly installed oppressive administration.",
    image: "http://filmpulse.net/wp-content/uploads/2013/03/rock-n-roll-high-school-movie-poster-1979-1020168886.jpg",
    theater: theater4
  },
  {
    title: "Gone Girl",
    year: "2014",
    director: "David Fincher",
    runtime: 149,
    genre: "Drama",
    rating: "R",
    synopsis: "With his wife's disappearance having become the focus of an intense media circus, a man sees the spotlight turned on him when it's suspected that he may not be innocent.",
    image: "https://sinekdoks.files.wordpress.com/2015/01/poster-gg.jpg",
    theater: theater5
  },
  {
    title: "Brazil",
    year: "1985",
    director: "Terry Gilliam",
    runtime: 132,
    genre: "Sci-Fi",
    rating: "R",
    synopsis: "A bureaucrat in a retro-future world tries to correct an administrative error and himself becomes an enemy of the state.",
    image: "http://assets.flicks.co.nz/images/movies/poster/89/8973ba741e7bd6450d8023552f43728e_500x735.jpg",
    theater: theater6
  },
  {
    title: "Up",
    year: "2009",
    director: "Pete Docter",
    runtime: 96,
    genre: "Animation",
    rating: "PG",
    synopsis: "Seventy-eight year old Carl Fredricksen travels to Paradise Falls in his home equipped with balloons, inadvertently taking a young stowaway.",
    image: "http://www.movie-poster-artwork-finder.com/posters/up-poster-artwork-edward-asner-christopher-plummer-jordan-nagai.jpg",
    theater: theater7
  },
  {
    title: "WALL-E",
    year: "2008",
    director: "Andrew Stanton",
    runtime: 98,
    genre: "Animation",
    rating: "G",
    synopsis: "In the distant future, a small waste collecting robot inadvertently embarks on a space journey that will ultimately decide the fate of mankind.",
    image: "https://caragaleblog.files.wordpress.com/2015/06/wall-e.jpg",
    theater: theater8
  },
  {
    title: "The Lord of the Rings: The Return of the King",
    year: "2003",
    director: "Peter Jackson",
    runtime: 201,
    genre: "Adventure",
    rating: "PG-13",
    synopsis: "Gandalf and Aragorn lead the World of Men against Sauron's army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.",
    image: "http://cdn.wmgecom.com/production/media/catalog/product/cache/292/image/9df78eab33525d08d6e5fb8d27136e95/r/e/returnst.jpg",
    theater: theater9
  },
  {
    title: "Pi",
    year: "1998",
    director: "Darren Aronofsky",
    runtime: 84,
    genre: "Drama",
    rating: "R",
    synopsis: "A paranoid mathematician searches for a key number that will unlock the universal patterns found in nature.",
    image: "http://img10.deviantart.net/c610/i/2012/214/4/8/pi_movie_poster_by_lafar88-d59j446.jpg",
    theater: theater10
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
  movie.theater = movie_hash[:theater]
  movie.save
end

puts "There are now #{Movie.count} movies in the database."

movie1  = Movie.find_by(title: "Jurassic Park")
movie2  = Movie.find_by(title: "Time Bandits")
movie3  = Movie.find_by(title: "Wayne's World")
movie4  = Movie.find_by(title: "Rock 'n' Roll High School")
movie5  = Movie.find_by(title: "Gone Girl")
movie6  = Movie.find_by(title: "Brazil")
movie7  = Movie.find_by(title: "Up")
movie8  = Movie.find_by(title: "WALL-E")
movie9  = Movie.find_by(title: "The Lord of the Rings: The Return of the King")
movie10 = Movie.find_by(title: "Pi")

# Showtimes

7.times do |n|
  dateTimeStart = Time.strptime('04/22/2016 05:00 UTC', '%m/%d/%Y %H:%M %z')
  showtime = Showtime.new
  showtime.theater = theater1
  showtime.movie = movie1
  n == 0 ? showtime.start_time = dateTimeStart : showtime.start_time = dateTimeStart + n.day
  showtime.save
end

7.times do |n|
  dateTimeStart = Time.strptime('04/22/2016 08:00 UTC', '%m/%d/%Y %H:%M %z')
  showtime = Showtime.new
  showtime.theater = theater1
  showtime.movie = movie1
  n == 0 ? showtime.start_time = dateTimeStart : showtime.start_time = dateTimeStart + n.day
  showtime.save
end

7.times do |n|
  dateTimeStart = Time.strptime('04/22/2016 11:00 UTC', '%m/%d/%Y %H:%M %z')
  showtime = Showtime.new
  showtime.theater = theater1
  showtime.movie = movie1
  n == 0 ? showtime.start_time = dateTimeStart : showtime.start_time = dateTimeStart + n.day
  showtime.save
end

7.times do |n|
  dateTimeStart = Time.strptime('04/22/2016 14:00 UTC', '%m/%d/%Y %H:%M %z')
  showtime = Showtime.new
  showtime.theater = theater1
  showtime.movie = movie1
  n == 0 ? showtime.start_time = dateTimeStart : showtime.start_time = dateTimeStart + n.day
  showtime.save
end

7.times do |n|
  dateTimeStart = Time.strptime('04/22/2016 17:00 UTC', '%m/%d/%Y %H:%M %z')
  showtime = Showtime.new
  showtime.theater = theater1
  showtime.movie = movie1
  n == 0 ? showtime.start_time = dateTimeStart : showtime.start_time = dateTimeStart + n.day
  showtime.save
end

7.times do |n|
  dateTimeStart = Time.strptime('04/22/2016 05:30 UTC', '%m/%d/%Y %H:%M %z')
  showtime = Showtime.new
  showtime.theater = theater2
  showtime.movie = movie2
  n == 0 ? showtime.start_time = dateTimeStart : showtime.start_time = dateTimeStart + n.day
  showtime.save
end

7.times do |n|
  dateTimeStart = Time.strptime('04/22/2016 08:30 UTC', '%m/%d/%Y %H:%M %z')
  showtime = Showtime.new
  showtime.theater = theater2
  showtime.movie = movie2
  n == 0 ? showtime.start_time = dateTimeStart : showtime.start_time = dateTimeStart + n.day
  showtime.save
end

7.times do |n|
  dateTimeStart = Time.strptime('04/22/2016 11:30 UTC', '%m/%d/%Y %H:%M %z')
  showtime = Showtime.new
  showtime.theater = theater2
  showtime.movie = movie2
  n == 0 ? showtime.start_time = dateTimeStart : showtime.start_time = dateTimeStart + n.day
  showtime.save
end

7.times do |n|
  dateTimeStart = Time.strptime('04/22/2016 14:30 UTC', '%m/%d/%Y %H:%M %z')
  showtime = Showtime.new
  showtime.theater = theater2
  showtime.movie = movie2
  n == 0 ? showtime.start_time = dateTimeStart : showtime.start_time = dateTimeStart + n.day
  showtime.save
end

7.times do |n|
  dateTimeStart = Time.strptime('04/22/2016 17:30 UTC', '%m/%d/%Y %H:%M %z')
  showtime = Showtime.new
  showtime.theater = theater2
  showtime.movie = movie2
  n == 0 ? showtime.start_time = dateTimeStart : showtime.start_time = dateTimeStart + n.day
  showtime.save
end

7.times do |n|
  dateTimeStart = Time.strptime('04/22/2016 05:00 UTC', '%m/%d/%Y %H:%M %z')
  showtime = Showtime.new
  showtime.theater = theater3
  showtime.movie = movie3
  n == 0 ? showtime.start_time = dateTimeStart : showtime.start_time = dateTimeStart + n.day
  showtime.save
end

7.times do |n|
  dateTimeStart = Time.strptime('04/22/2016 08:00 UTC', '%m/%d/%Y %H:%M %z')
  showtime = Showtime.new
  showtime.theater = theater3
  showtime.movie = movie3
  n == 0 ? showtime.start_time = dateTimeStart : showtime.start_time = dateTimeStart + n.day
  showtime.save
end

7.times do |n|
  dateTimeStart = Time.strptime('04/22/2016 11:00 UTC', '%m/%d/%Y %H:%M %z')
  showtime = Showtime.new
  showtime.theater = theater3
  showtime.movie = movie3
  n == 0 ? showtime.start_time = dateTimeStart : showtime.start_time = dateTimeStart + n.day
  showtime.save
end

7.times do |n|
  dateTimeStart = Time.strptime('04/22/2016 14:00 UTC', '%m/%d/%Y %H:%M %z')
  showtime = Showtime.new
  showtime.theater = theater3
  showtime.movie = movie3
  n == 0 ? showtime.start_time = dateTimeStart : showtime.start_time = dateTimeStart + n.day
  showtime.save
end

7.times do |n|
  dateTimeStart = Time.strptime('04/22/2016 17:00 UTC', '%m/%d/%Y %H:%M %z')
  showtime = Showtime.new
  showtime.theater = theater3
  showtime.movie = movie3
  n == 0 ? showtime.start_time = dateTimeStart : showtime.start_time = dateTimeStart + n.day
  showtime.save
end

7.times do |n|
  dateTimeStart = Time.strptime('04/22/2016 05:30 UTC', '%m/%d/%Y %H:%M %z')
  showtime = Showtime.new
  showtime.theater = theater4
  showtime.movie = movie4
  n == 0 ? showtime.start_time = dateTimeStart : showtime.start_time = dateTimeStart + n.day
  showtime.save
end

7.times do |n|
  dateTimeStart = Time.strptime('04/22/2016 08:30 UTC', '%m/%d/%Y %H:%M %z')
  showtime = Showtime.new
  showtime.theater = theater4
  showtime.movie = movie4
  n == 0 ? showtime.start_time = dateTimeStart : showtime.start_time = dateTimeStart + n.day
  showtime.save
end

7.times do |n|
  dateTimeStart = Time.strptime('04/22/2016 11:30 UTC', '%m/%d/%Y %H:%M %z')
  showtime = Showtime.new
  showtime.theater = theater4
  showtime.movie = movie4
  n == 0 ? showtime.start_time = dateTimeStart : showtime.start_time = dateTimeStart + n.day
  showtime.save
end

7.times do |n|
  dateTimeStart = Time.strptime('04/22/2016 14:30 UTC', '%m/%d/%Y %H:%M %z')
  showtime = Showtime.new
  showtime.theater = theater4
  showtime.movie = movie4
  n == 0 ? showtime.start_time = dateTimeStart : showtime.start_time = dateTimeStart + n.day
  showtime.save
end

7.times do |n|
  dateTimeStart = Time.strptime('04/22/2016 17:30 UTC', '%m/%d/%Y %H:%M %z')
  showtime = Showtime.new
  showtime.theater = theater4
  showtime.movie = movie4
  n == 0 ? showtime.start_time = dateTimeStart : showtime.start_time = dateTimeStart + n.day
  showtime.save
end

7.times do |n|
  dateTimeStart = Time.strptime('04/22/2016 05:00 UTC', '%m/%d/%Y %H:%M %z')
  showtime = Showtime.new
  showtime.theater = theater5
  showtime.movie = movie5
  n == 0 ? showtime.start_time = dateTimeStart : showtime.start_time = dateTimeStart + n.day
  showtime.save
end

7.times do |n|
  dateTimeStart = Time.strptime('04/22/2016 08:00 UTC', '%m/%d/%Y %H:%M %z')
  showtime = Showtime.new
  showtime.theater = theater5
  showtime.movie = movie5
  n == 0 ? showtime.start_time = dateTimeStart : showtime.start_time = dateTimeStart + n.day
  showtime.save
end

7.times do |n|
  dateTimeStart = Time.strptime('04/22/2016 11:00 UTC', '%m/%d/%Y %H:%M %z')
  showtime = Showtime.new
  showtime.theater = theater5
  showtime.movie = movie5
  n == 0 ? showtime.start_time = dateTimeStart : showtime.start_time = dateTimeStart + n.day
  showtime.save
end

7.times do |n|
  dateTimeStart = Time.strptime('04/22/2016 14:00 UTC', '%m/%d/%Y %H:%M %z')
  showtime = Showtime.new
  showtime.theater = theater5
  showtime.movie = movie5
  n == 0 ? showtime.start_time = dateTimeStart : showtime.start_time = dateTimeStart + n.day
  showtime.save
end

7.times do |n|
  dateTimeStart = Time.strptime('04/22/2016 17:00 UTC', '%m/%d/%Y %H:%M %z')
  showtime = Showtime.new
  showtime.theater = theater5
  showtime.movie = movie5
  n == 0 ? showtime.start_time = dateTimeStart : showtime.start_time = dateTimeStart + n.day
  showtime.save
end

7.times do |n|
  dateTimeStart = Time.strptime('04/22/2016 05:30 UTC', '%m/%d/%Y %H:%M %z')
  showtime = Showtime.new
  showtime.theater = theater6
  showtime.movie = movie6
  n == 0 ? showtime.start_time = dateTimeStart : showtime.start_time = dateTimeStart + n.day
  showtime.save
end

7.times do |n|
  dateTimeStart = Time.strptime('04/22/2016 08:30 UTC', '%m/%d/%Y %H:%M %z')
  showtime = Showtime.new
  showtime.theater = theater6
  showtime.movie = movie6
  n == 0 ? showtime.start_time = dateTimeStart : showtime.start_time = dateTimeStart + n.day
  showtime.save
end

7.times do |n|
  dateTimeStart = Time.strptime('04/22/2016 11:30 UTC', '%m/%d/%Y %H:%M %z')
  showtime = Showtime.new
  showtime.theater = theater6
  showtime.movie = movie6
  n == 0 ? showtime.start_time = dateTimeStart : showtime.start_time = dateTimeStart + n.day
  showtime.save
end

7.times do |n|
  dateTimeStart = Time.strptime('04/22/2016 14:30 UTC', '%m/%d/%Y %H:%M %z')
  showtime = Showtime.new
  showtime.theater = theater6
  showtime.movie = movie6
  n == 0 ? showtime.start_time = dateTimeStart : showtime.start_time = dateTimeStart + n.day
  showtime.save
end

7.times do |n|
  dateTimeStart = Time.strptime('04/22/2016 17:30 UTC', '%m/%d/%Y %H:%M %z')
  showtime = Showtime.new
  showtime.theater = theater6
  showtime.movie = movie6
  n == 0 ? showtime.start_time = dateTimeStart : showtime.start_time = dateTimeStart + n.day
  showtime.save
end

7.times do |n|
  dateTimeStart = Time.strptime('04/22/2016 05:00 UTC', '%m/%d/%Y %H:%M %z')
  showtime = Showtime.new
  showtime.theater = theater7
  showtime.movie = movie7
  n == 0 ? showtime.start_time = dateTimeStart : showtime.start_time = dateTimeStart + n.day
  showtime.save
end

7.times do |n|
  dateTimeStart = Time.strptime('04/22/2016 08:00 UTC', '%m/%d/%Y %H:%M %z')
  showtime = Showtime.new
  showtime.theater = theater7
  showtime.movie = movie7
  n == 0 ? showtime.start_time = dateTimeStart : showtime.start_time = dateTimeStart + n.day
  showtime.save
end

7.times do |n|
  dateTimeStart = Time.strptime('04/22/2016 11:00 UTC', '%m/%d/%Y %H:%M %z')
  showtime = Showtime.new
  showtime.theater = theater7
  showtime.movie = movie7
  n == 0 ? showtime.start_time = dateTimeStart : showtime.start_time = dateTimeStart + n.day
  showtime.save
end

7.times do |n|
  dateTimeStart = Time.strptime('04/22/2016 14:00 UTC', '%m/%d/%Y %H:%M %z')
  showtime = Showtime.new
  showtime.theater = theater7
  showtime.movie = movie7
  n == 0 ? showtime.start_time = dateTimeStart : showtime.start_time = dateTimeStart + n.day
  showtime.save
end

7.times do |n|
  dateTimeStart = Time.strptime('04/22/2016 17:00 UTC', '%m/%d/%Y %H:%M %z')
  showtime = Showtime.new
  showtime.theater = theater7
  showtime.movie = movie7
  n == 0 ? showtime.start_time = dateTimeStart : showtime.start_time = dateTimeStart + n.day
  showtime.save
end

7.times do |n|
  dateTimeStart = Time.strptime('04/22/2016 05:30 UTC', '%m/%d/%Y %H:%M %z')
  showtime = Showtime.new
  showtime.theater = theater8
  showtime.movie = movie8
  n == 0 ? showtime.start_time = dateTimeStart : showtime.start_time = dateTimeStart + n.day
  showtime.save
end

7.times do |n|
  dateTimeStart = Time.strptime('04/22/2016 08:30 UTC', '%m/%d/%Y %H:%M %z')
  showtime = Showtime.new
  showtime.theater = theater8
  showtime.movie = movie8
  n == 0 ? showtime.start_time = dateTimeStart : showtime.start_time = dateTimeStart + n.day
  showtime.save
end

7.times do |n|
  dateTimeStart = Time.strptime('04/22/2016 11:30 UTC', '%m/%d/%Y %H:%M %z')
  showtime = Showtime.new
  showtime.theater = theater8
  showtime.movie = movie8
  n == 0 ? showtime.start_time = dateTimeStart : showtime.start_time = dateTimeStart + n.day
  showtime.save
end

7.times do |n|
  dateTimeStart = Time.strptime('04/22/2016 14:30 UTC', '%m/%d/%Y %H:%M %z')
  showtime = Showtime.new
  showtime.theater = theater8
  showtime.movie = movie8
  n == 0 ? showtime.start_time = dateTimeStart : showtime.start_time = dateTimeStart + n.day
  showtime.save
end

7.times do |n|
  dateTimeStart = Time.strptime('04/22/2016 17:30 UTC', '%m/%d/%Y %H:%M %z')
  showtime = Showtime.new
  showtime.theater = theater8
  showtime.movie = movie8
  n == 0 ? showtime.start_time = dateTimeStart : showtime.start_time = dateTimeStart + n.day
  showtime.save
end

7.times do |n|
  dateTimeStart = Time.strptime('04/22/2016 05:00 UTC', '%m/%d/%Y %H:%M %z')
  showtime = Showtime.new
  showtime.theater = theater9
  showtime.movie = movie9
  n == 0 ? showtime.start_time = dateTimeStart : showtime.start_time = dateTimeStart + n.day
  showtime.save
end

7.times do |n|
  dateTimeStart = Time.strptime('04/22/2016 08:00 UTC', '%m/%d/%Y %H:%M %z')
  showtime = Showtime.new
  showtime.theater = theater9
  showtime.movie = movie9
  n == 0 ? showtime.start_time = dateTimeStart : showtime.start_time = dateTimeStart + n.day
  showtime.save
end

7.times do |n|
  dateTimeStart = Time.strptime('04/22/2016 11:00', '%m/%d/%Y %H:%M')
  showtime = Showtime.new
  showtime.theater = theater9
  showtime.movie = movie9
  n == 0 ? showtime.start_time = dateTimeStart : showtime.start_time = dateTimeStart + n.day
  showtime.save
end

7.times do |n|
  dateTimeStart = Time.strptime('04/22/2016 14:00 UTC', '%m/%d/%Y %H:%M %z')
  showtime = Showtime.new
  showtime.theater = theater9
  showtime.movie = movie9
  n == 0 ? showtime.start_time = dateTimeStart : showtime.start_time = dateTimeStart + n.day
  showtime.save
end

7.times do |n|
  dateTimeStart = Time.strptime('04/22/2016 17:00 UTC', '%m/%d/%Y %H:%M %z')
  showtime = Showtime.new
  showtime.theater = theater9
  showtime.movie = movie9
  n == 0 ? showtime.start_time = dateTimeStart : showtime.start_time = dateTimeStart + n.day
  showtime.save
end

7.times do |n|
  dateTimeStart = Time.strptime('04/22/2016 05:30 UTC', '%m/%d/%Y %H:%M %z')
  showtime = Showtime.new
  showtime.theater = theater10
  showtime.movie = movie10
  n == 0 ? showtime.start_time = dateTimeStart : showtime.start_time = dateTimeStart + n.day
  showtime.save
end

7.times do |n|
  dateTimeStart = Time.strptime('04/22/2016 08:30 UTC', '%m/%d/%Y %H:%M %z')
  showtime = Showtime.new
  showtime.theater = theater10
  showtime.movie = movie10
  n == 0 ? showtime.start_time = dateTimeStart : showtime.start_time = dateTimeStart + n.day
  showtime.save
end

7.times do |n|
  dateTimeStart = Time.strptime('04/22/2016 11:30 UTC', '%m/%d/%Y %H:%M %z')
  showtime = Showtime.new
  showtime.theater = theater10
  showtime.movie = movie10
  n == 0 ? showtime.start_time = dateTimeStart : showtime.start_time = dateTimeStart + n.day
  showtime.save
end

7.times do |n|
  dateTimeStart = Time.strptime('04/22/2016 14:30 UTC', '%m/%d/%Y %H:%M %z')
  showtime = Showtime.new
  showtime.theater = theater10
  showtime.movie = movie10
  n == 0 ? showtime.start_time = dateTimeStart : showtime.start_time = dateTimeStart + n.day
  showtime.save
end

7.times do |n|
  dateTimeStart = Time.strptime('04/22/2016 17:30 UTC', '%m/%d/%Y %H:%M %z')
  showtime = Showtime.new
  showtime.theater = theater10
  showtime.movie = movie10
  n == 0 ? showtime.start_time = dateTimeStart : showtime.start_time = dateTimeStart + n.day
  showtime.save
end

puts "There are now #{Showtime.count} showtimes in the database."
