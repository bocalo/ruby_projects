# frozen_string_literal: true

class Movie
  attr_accessor :url, :title, :date, :country, :output, :genre, :duration, :rating, :director, :actors

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
    "Movie: #{@url} - #{@title} - #{@date} - #{@country} - #{@output} - #{@genre} - #{@duration} - #{@rating} - #{@director} - #{@actors}"
  end

  def inspect
    "Movie: #{title}(#{@date}) - #{@director} - #{@actors} - #{@country}"
  end

  def genre?(word)
    return true if @genre.include?(word)

    raise "Genre not found"
  end
end
