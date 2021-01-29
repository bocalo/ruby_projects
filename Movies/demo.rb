# frozen_string_literal: true

require "./lib/movie_collection.rb"
require "./lib/movie.rb"
require "./lib/netflix.rb"

mc = MovieCollection.new("movies.txt")
#Netflix.new("movies.txt")
#pp mc

movie = Movie.new("http://imdb.com/title/tt1504320/?ref_=chttp_tt_222", "The King's Speech", 2010, "UK", "2010-12-25", "Biography,Drama,History", "118 min", 8.1, "Tom Hooper", "Colin Firth,Geoffrey Rush,Helena Bonham Carter")

pp net = Netflix.new("movies.txt")

#net = Netflix.new("http://imdb.com/title/tt1504320/?ref_=chttp_tt_222", "The King's Speech", 2010, "UK", "2010-12-25", "Biography,Drama,History", "118 min", 8.1, "Tom Hooper", "Colin Firth,Geoffrey Rush,Helena Bonham Carter")

begin
  movie.genre?("Non-existing-genre")
rescue StandardError
  puts "Genre not found"
end

movie.has_genre?("Drama")

#pp movie.to_s
# pp movie.inspect

pp net.show(genre: "Comedy", period: :classic)
#net.pay(25)
#net.enough?(20, 3)
#pp net.price_by_type(:classic)
# pp net.years_by_type(:nuevo)

#puts "This movie was made from #{from} to #{to}"
#"Now showing: #{movies}: #{title} - #{genre} - #{period}"
# pp net.show("19,00", "21,00")
