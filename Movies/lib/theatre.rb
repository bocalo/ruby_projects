require_relative "movie.rb"
require_relative "movie_collection.rb"
require_relative "ancient_movie.rb"
require_relative "classic_movie.rb"
require_relative "modern_movie.rb"
require_relative "new_movie.rb"

class Theatre
  def initialize(filename)
    @filename = filename
  end

  def show(time)
    movies = MovieCollection.new(@filename)
    if time >= 9.00 && time < 12.00
      movies.all.select { |movie| movie.date.to_i >= 1945 && movie.date.to_i < 1968 }
    elsif time >= 12.00 && time < 17.00
      movies.filter(genre: "Adventure") + movies.filter(genre: "Comedy")
    elsif time >= 17.00 && time < 24.00
      movies.filter(genre: "Drama") + movies.filter(genre: "Horror")
    end
  end

  def when?(title)
    movies = MovieCollection.new(@filename)
    movie = movies.all.find do |m|
      m.title == title
    end
    genre = movie.genre
    if movie.date.to_i >= 1945 && movie.date.to_i < 1968
      return "morning"
    elsif genre.include?("Comedy") || movie.genre.include?("Adventure")
      return "day"
    elsif genre.include?("Drama") || genre.include?("Horror")
      return "evening"
    else
      raise "There is not that movie in our theatre"
    end
  end
end

#   def random_movie
#     movies = MovieCollection.new(@filename)
#     movie = movies.all.sample

#   end
# end
