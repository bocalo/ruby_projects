# frozen_string_literal: true

require_relative "movie_collection.rb"
require_relative "movie.rb"

mc = MovieCollection.new("movies.txt")

movie = Movie.new("http://imdb.com/title/tt1504320/?ref_=chttp_tt_222", "The King's Speech", 2010, "UK", "2010-12-25", "Biography,Drama,History", "118 min", 8.1, "Tom Hooper", "Colin Firth,Geoffrey Rush,Helena Bonham Carter")

begin
  movie.genre?("Non-existing-genre")
rescue StandardError
  puts "Genre not found"
end

# pp movie.has_genre?("Drama")

pp movie.to_s
# pp movie.inspect
