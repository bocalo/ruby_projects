require_relative "movie.rb"
require_relative "movie_collection.rb"
require_relative "ancient_movie.rb"
require_relative "classic_movie.rb"
require_relative "modern_movie.rb"
require_relative "new_movie.rb"

class Netflix
  def initialize(filename)
    #@movies = MovieCollection.new(filename)
    @filename = filename
    @balance = 25
  end

  def years_by_type(type)
    if type == :ancient
      from, to = 1900, 1945
    elsif type == :classic
      from, to = 1945, 1968
    elsif type == :modern
      from, to = 1968, 2000
    elsif type == :nuevo
      from, to = 2000, 2021
    end
    [from, to]
  end

  def show(genre:, period:)
    if enough?(period)
      movies = MovieCollection.new(@filename)
      from, to = years_by_type(period)
      filtered_movies = movies.filter(genre: genre)
      filtered_movies.select do |movie|
        movie.date.to_i >= from && movie.date.to_i <= to
      end
      @balance -= price_by_type(period)
    else
      raise "Error"
    end
  end

  def how_much?(title)
    movies = MovieCollection.new(@filename)
    movie = movies.all.find do |m|
      m.title == title
    end
    type = movies.type_by_year(movie.date.to_i)
    price = price_by_type(type)
  end

  def pay(money)
    @balance += money
  end

  def enough?(type)
    @balance >= price_by_type(type)
  end

  def price_by_type(type)
    if type == :ancient
      price = 1
    elsif type == :classic
      price = 1.5
    elsif type == :modern
      price = 3
    elsif type == :nuevo
      price = 5
    end
    price
  end
end
