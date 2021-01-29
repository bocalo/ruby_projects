require_relative "movie.rb"
require_relative "movie_collection.rb"

class Theatre
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

  def show(start, fin)
    "Now showing: #{title} - #{start}-#{fin}"
  end
end
