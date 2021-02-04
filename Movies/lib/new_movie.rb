require_relative "movie.rb"
require_relative "movie_collection.rb"

class NewMovie < Movie
  def to_s
    "Movie(2000-2021): The title - #{@title} - old movie (#{@date} year)"
  end
end
