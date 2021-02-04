require_relative "movie.rb"
require_relative "movie_collection.rb"

class ModernMovie < Movie
  def to_s
    "(1968-2000): The title #{title} - modern movie, the actors #{actors} are playing there"
  end
end
