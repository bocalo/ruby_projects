# frozen_string_literal: true

require "csv"
require "ostruct"
require "date"
require_relative "movie.rb"
require_relative "netflix.rb"

class MovieCollection
  def initialize(filename)
    @file = CSV.read(filename, col_sep: "|").take(250)
    @movies = @file.map { |el| Movie.new(*el) }

    # @movies = @file.map do |el|
    #   type = type_by_year(el[2].to_i)
    #   if type == :ancient
    #     ancient = AncientMovie.new(*el)
    #   elsif type == :classic
    #     classic = ClassicMovie.new(*el)
    #   elsif type == :modern
    #     modern = ModernMovie.new(*el)
    #   elsif type == :nuevo
    #     nuevo = NewMovie.new(*el)
    #   end
    # end
  end

  def type_by_year(year)
    if year > 1900 && year < 1945
      type = :ancient
    elsif year > 1945 && year < 1968
      type = :classic
    elsif year > 1968 && year < 2000
      type = :modern
    elsif year > 2000 && year < 2021
      type = :nuevo
    end
  end

  def all
    @movies
  end

  def sort_by(field)
    @movies.sort_by { |el| el.send(field.to_s) }
  rescue StandardError
    raise "There is no such date"
  end

  def filter(field)
    field_name = field.keys.first
    field_value = field.values.first
    @movies.select do |movie|
      if field_name == :genre
        movie.genre.include?(field_value)
      else
        movie.send(field_name) == field_value
      end
    end
  end

  def stats(field_name)
    count = {}
    all_fields(field_name).each do |field_value|
      puts field_name
      puts field_value
      movies_count = list_movies(field_value, field_name).length
      count[field_value] = movies_count
    end
    count
  end

  #private

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
