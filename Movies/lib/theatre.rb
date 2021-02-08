require_relative "movie_collection"
require_relative "cash"
require "money"

class Theatre
  include Cash::InstanceMetods

  def initialize(filename)
    @movies = MovieCollection.new(filename)
    @filename = filename
    @balance = 25
  end

  def show(time)
    if time >= 9.00 && time < 12.00
      @movies.all.select { |movie| movie.date.to_i >= 1945 && movie.date.to_i < 1968 }
    elsif time >= 12.00 && time < 17.00
      @movies.filter(genre: "Adventure") + @movies.filter(genre: "Comedy")
    elsif time >= 17.00 && time < 24.00
      @movies.filter(genre: "Drama") + @movies.filter(genre: "Horror")
    end
  end

  def when?(title)
    movie = @movies.all.find do |m|
      m.title == title
    end
    genre = movie.genre
    if movie.date.to_i >= 1945 && movie.date.to_i < 1968
      return "morning"
    elsif genre.include?("Comedy") || genre.include?("Adventure")
      return "day"
    elsif genre.include?("Drama") || genre.include?("Horror")
      return "evening"
    else
      raise "There is not that movie in our theatre"
    end
  end

  def random_movie
    rand = 10.times.map { @movies.all.sample }.sort_by { |el| el.rating }
    rand.last
  end

  def buy_ticket(title)
    puts "You've bought the ticket on the #{title}"

    result = when?(title)

    if result == "morning"
      @balance += 3
    elsif result == "day"
      @balance += 5
    elsif result == "evening"
      @balance += 10
    else
      @balance
    end
  end

  def cash
    @balance
  end
end
