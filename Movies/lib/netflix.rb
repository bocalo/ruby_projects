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
      #movies = MovieCollection.new("../movies.txt")
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

#pp net = Netflix.new("http://imdb.com/title/tt1504320/?ref_=chttp_tt_222", "The King's Speech", 2010, "UK", "2010-12-25", "Biography,Drama,History", "118 min", 8.1, "Tom Hooper", "Colin Firth,Geoffrey Rush,Helena Bonham Carter")

#pp net.show(genre: "Comedy", period: :classic)
# pp net.pay(25)
# pp net.pay(25)
# pp net.price_by_type(:classic)
# pp net.years_by_type(:nuevo)

#puts "This movie was made from #{from} to #{to}"
#"Now showing: #{movies}: #{title} - #{genre} - #{period}"
# pp net.show("19,00", "21,00")
#movies = MovieCollection.new("../movies.txt")
