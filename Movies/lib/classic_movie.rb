require_relative "movie.rb"

class ClassicMovie < Movie
  def other_movies(genre)
    movies = MovieCollection.new("movies.txt")
    movies.sort_by(:genre).take(10)
  end

  def to_s
    "(1945-1968): The title is #{title} - classic movie, and yet 10(#{other_movies(genre: "Comedy")})"
  end
end
