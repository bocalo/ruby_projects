require_relative "movie.rb"
require_relative "movie_collection.rb"

class NewMovie < Movie
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
    "Movie(1900-1945): The title - #{@title} - old movie (#{@date} year)"
  end
end

# def sort_by(field)
#   begin
#     @movies.sort_by { |el| el.send("#{field}") }
#   rescue
#     raise "There is no such date"
#   end
# end
nuevo = NewMovie.new("http://imdb.com/title/tt2106476/?ref_=chttp_tt_118",
                     "The Hunt",
                     "2012",
                     "Denmark",
                     "2013-01-10",
                     "Drama",
                     "115 min",
                     "8.3",
                     "Thomas Vinterberg",
                     "Mads Mikkelsen,Thomas Bo Larsen,Annika Wedderkopp")
pp nuevo.to_s
