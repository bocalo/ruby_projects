require_relative "movie.rb"
require_relative "movie_collection.rb"

class ModernMovie < Movie
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
    "(1968-2000): The title #{title} - modern movie, the actors #{actors} are playing there"
  end
end

modern = ModernMovie.new("http://imdb.com/title/tt0068646/?ref_=chttp_tt_2",
                         "The Godfather",
                         "1972",
                         "USA",
                         "1972-03-24",
                         "Crime,Drama",
                         "175 min",
                         "9.2",
                         "Francis Ford Coppola",
                         "Marlon Brando,Al Pacino,James Caan")
#pp modern.to_s
