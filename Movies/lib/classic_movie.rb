require_relative "movie.rb"
require_relative "movie_collection.rb"
require "csv"

class ClassicMovie
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

  def other_movies(genre)
    movies = MovieCollection.new("../movies.txt")
    #movies.sort_by(:director)
    movies.sort_by(:genre)
  end

  # def to_s
  #   "(1945-1968): The title is #{title} - classic movie, the director is #{director} (there are yet 10(#{other_movies(director)} director's movies in the list)) and yet 10(#{other_movies(genre)})"
  # end

  def to_s
    "(1945-1968): The title is #{title} - classic movie, and yet 10(#{other_movies(genre: "Comedy")})"
  end
end

classic = ClassicMovie.new("http://imdb.com/title/tt0050083/?ref_=chttp_tt_5",
                           "12 Angry Men",
                           "1957",
                           "USA",
                           "1957-04",
                           "Crime,Drama",
                           "96 min",
                           "8.9",
                           "Sidney Lumet",
                           "Henry Fonda,Lee J. Cobb,Martin Balsam")

#classic.other_movies("Sidney Lumet", "Comedy")
classic.other_movies("Comedy")
#pp classic.to_s

# def to_s
#   "(1945-1968): The title is #{title} - classic movie, the director is #{director} (there are yet 10(#{@movies} director's movies in the list))"
# end
