# frozen_string_literal: true

require "./lib/movie_collection.rb"
require "./lib/movie.rb"
require "./lib/netflix.rb"
require "./lib/theatre"

mc = MovieCollection.new("movies.txt")
#pp mc
#pp mc.filter(genre: "Comedy")
#pp mc
#pp mc.day_by_time(9.00)
#pp mc.type_by_year(1957)
movie = Movie.new("http://imdb.com/title/tt1504320/?ref_=chttp_tt_222", "The King's Speech", 2010, "UK", "2010-12-25", "Biography,Drama,History", "118 min", 8.1, "Tom Hooper", "Colin Firth,Geoffrey Rush,Helena Bonham Carter")
#pp movie.to_s
net = Netflix.new("movies.txt")
#pp net
#pp net.how_much?("Terminator")
# net = Netflix.new("http://imdb.com/title/tt1504320/?ref_=chttp_tt_222", "The King's Speech", 2010, "UK", "2010-12-25", "Biography,Drama,History", "118 min", 8.1, "Tom Hooper", "Colin Firth,Geoffrey Rush,Helena Bonham Carter")

# begin
#   movie.genre?("Non-existing-genre")
# rescue StandardError
#   puts "Genre not found"
# end

#pp movie.genre?("Drama")

#pp movie.to_s
# pp movie.inspect
#pp net.list_movies("Terminator", :title)
#pp net.show(genre: "Comedy", period: :classic)
#pp net.show(genre: "Comedy", period: :classic)
#pp net.how_much?("The Terminator")
#pp net.how_much?("The Help")

#pp net.title?("The Terminator")
#pp net.pay(35)
#pp net.enough?(:classic)
#pp net.send(:enough?, :classic)
#pp net.price_by_type(:classic)
#pp net.years_by_type(:nuevo)

theatre = Theatre.new("movies.txt")
ancient = AncientMovie.new("http://imdb.com/title/tt0036868/?ref_=chttp_tt_195",
                           "The Best Years of Our Lives",
                           "1946",
                           "USA",
                           "1947-06-17",
                           "Drama,Romance,War",
                           "172 min",
                           "8.2",
                           "William Wyler",
                           "Fredric March,Dana Andrews,Myrna Loy")
#pp ancient.to_s

classic = ClassicMovie.new("http://imdb.com/title/tt0052618/?ref_=chttp_tt_186",
                           "Ben-Hur",
                           "1959",
                           "USA",
                           "1959-12-26",
                           "Adventure,Drama,History",
                           "212 min",
                           "8.1",
                           "William Wyler",
                           "Charlton Heston,Jack Hawkins,Stephen Boyd")
#pp classic.to_s

modern = ModernMovie.new("http://imdb.com/title/tt0114814/?ref_=chttp_tt_24",
                         "The Usual Suspects",
                         "1995",
                         "USA",
                         "1995-09-15",
                         "Crime,Drama,Thriller",
                         "106 min",
                         "8.6",
                         "Bryan Singer",
                         "Kevin Spacey,Gabriel Byrne,Chazz Palminteri")

#pp modern.to_s

nuevo = NewMovie.new("http://imdb.com/title/tt0405159/?ref_=chttp_tt_185",
                     "Million Dollar Baby",
                     "2004",
                     "USA",
                     "2005-01-28",
                     "Drama,Sport",
                     "132 min",
                     "8.1",
                     "Clint Eastwood",
                     "Hilary Swank,Clint Eastwood,Morgan Freeman")
#pp nuevo.to_s

#pp theatre.show(14.00)
#pp theatre.when?("The King's Speech")
#pp theatre.random_movie
#pp theatre.show(9.00)
pp theatre.random_movie

#puts "This movie was made from #{from} to #{to}"
#"Now showing: #{movies}: #{title} - #{genre} - #{period}"
# pp net.show("19,00", "21,00")
# net = Netflix.new("http://imdb.com/title/tt1504320/?ref_=chttp_tt_222", "The King's Speech", 2010, "UK", "2010-12-25", "Biography,Drama,History", "118 min", 8.1, "Tom Hooper", "Colin Firth,Geoffrey Rush,Helena Bonham Carter")
