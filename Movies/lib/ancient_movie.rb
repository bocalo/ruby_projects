require_relative "movie.rb"
require_relative "movie_collection.rb"
require "csv"

class AncientMovie < Movie
  def initialize(url, title, date, country, output, genre, duration, rating, director, actors)
    @url = url
    @title = title
    @date = date
    @country = country
    @output = output
    @genre = genre
    @duration = duration
    @rating = rating
    @director = director
    @actors = actors
  end

  def to_s
    "(1900-1945): The title #{title} - old movie (#{date} year)"
  end
end

# ancient = AncientMovie.new("http://imdb.com/title/tt0015864/?ref_=chttp_tt_132",
#                            "The Gold Rush",
#                            "1925",
#                            "USA",
#                            "1925",
#                            "Adventure,Comedy,Drama",
#                            "95 min",
#                            "8.3",
#                            "Charles Chaplin",
#                            "Charles Chaplin,Mack Swain,Tom Murray")
