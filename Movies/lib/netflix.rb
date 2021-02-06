require_relative "movie_collection"
require_relative "cash"

class Netflix
  include Cashable

  def initialize(filename)
    @movies = MovieCollection.new(filename)
    @filename = filename
    @balance = 25
  end

  def years_by_type(type)
    if type == :ancient
      [1900, 1945]
    elsif type == :classic
      [1945, 1968]
    elsif type == :modern
      [1968, 2000]
    elsif type == :nuevo
      [2000, 2021]
    end
  end

  def show(genre:, period:)
    if enough?(period)
      from, to = years_by_type(period)
      filtered_movies = @movies.filter(genre: genre)
      filtered_movies.select do |movie|
        movie.date.to_i >= from && movie.date.to_i <= to
      end
      @balance -= price_by_type(period)
    else
      raise "Error"
    end
  end

  def how_much?(title)
    movie = @movies.all.find do |m|
      m.title == title
    end
    type = @movies.type_by_year(movie.date.to_i)
    price = price_by_type(type)
  end

  def buy_ticket(title)
    puts "Have you bought the ticket on the movie #{title}?"
    if @balance += 3
      "morning"
    elsif @balance += 5
      "day"
    elsif @balance += 10
      "evening"
    end
  end

  private

  def enough?(type)
    @balance >= price_by_type(type)
  end

  def price_by_type(type)
    if type == :ancient
      1
    elsif type == :classic
      1.5
    elsif type == :modern
      3
    elsif type == :nuevo
      5
    end
  end
end
