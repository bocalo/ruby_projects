require "csv"
require "ostruct"
require "date"
#require_relative "test2.rb"

class MovieCollection
  def initialize(file)
    @file = CSV.read("movies.txt", col_sep: "|").take(5)
    @movies = @file.map { |el| Movie.new(*el) }
    #pp @movies
    #pp @movies[1].date
  end

  def all
    @movies
  end

  def sort_by(field)
    @movies.sort_by { |el| el.send("#{field}") }
  end

  def filter(field)
    field_name = field.keys.first
    field_value = field.values.first
    @movies.select { |el| el.send(field_name) == field_value }
  end

  def stats(field_name)
    count = Hash.new
    all_fields(field_name).each do |field_value|
      puts field_name
      puts field_value
      movies_count = list_movies(field_value, field_name).length
      count[field_value] = movies_count
    end
    count
  end

  def all_fields(field_name)
    @movies.map do |movie|
      if field_name == :actors
        movie.actors.split(",")
      else
        movie.send(field_name)
      end
    end.flatten
  end

  def list_movies(field_value, field_name)
    @movies.select do |movie|
      if field_name == :actors
        movie.actors.include?(field_value)
      else
        movie.send(field_name) == field_value
      end
    end
  end
end

class Movie
  attr_accessor :url, :title, :date, :country, :output, :genre, :duration, :rating, :director, :actors

  def initialize(url, title, date, country, output, genre, duration, rating, director, actors)
    @url, @title, @date, @country, @output, @genre, @duration, @rating, @director, @actors = url, title, date, country, output, genre, duration, rating, director, actors
    #super(@file)
  end

  def to_s
    "Movie: #{@url} - #{@title} - #{@date} - #{@country} - #{@output} - #{@genre} - #{@duration} - #{@rating} - #{@director} - #{@actors}"
  end

  def inspect
    "Movie: #{title}(#{@date}) - #{@director} - #{@actors} - #{@country}"
  end

  def has_genre?(word)
    begin
      @genre.include?(word)
    rescue ArgumentError
      puts "Unknown dates"
    end
  end
end

mc = MovieCollection.new("movies.txt")
#pp mc.all
#pp mc.sort_by(:date)
#pp mc.filter(:date, 1972)
#pp mc.filter(date: "1974")
#pp mc.stats(:actors)
#pp mc.list_movies("Marlon Brando,Al Pacino,James Caan", :actors)
#pp mc.all_fields(:actors)
#pp mc.all_fields(:actors)
#pp mc.make_movies
movie = Movie.new("http://imdb.com/title/tt1504320/?ref_=chttp_tt_222", "The King's Speech", 2010, "UK", "2010-12-25", "Biography,Drama,History", "118 min", 8.1, "Tom Hooper", "Colin Firth,Geoffrey Rush,Helena Bonham Carter")

#pp movie.all.first.actors
#pp movie.all[0]

pp movie.has_genre?("Tragedy")
#pp movie.to_s
#pp movie.inspect
#pp movie.all.inspect
#pp movie("UK").inspect


