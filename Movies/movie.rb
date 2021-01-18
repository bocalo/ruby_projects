class Movie
  attr_accessor :url, :title, :date, :country, :output, :genre, :duration, :rating, :director, :actors

  def initialize(url, title, date, country, output, genre, duration, rating, director, actors)
    @url, @title, @date, @country, @output, @genre, @duration, @rating, @director, @actors = url, title, date, country, output, genre, duration, rating, director, actors
  end

  def to_s
    "Movie: #{@url} - #{@title} - #{@date} - #{@country} - #{@output} - #{@genre} - #{@duration} - #{@rating} - #{@director} - #{@actors}"
  end

  def inspect
    "Movie: #{title}(#{@date}) - #{@director} - #{@actors} - #{@country}"
  end

  def has_genre?(word)
    if @genre.include?(word)
      return true
    else
      raise "Genre not found" 
    end
  end
end

