# frozen_string_literal: true

require "csv"
require "ostruct"
require "date"
require_relative "movie.rb"

class MovieCollection
  def initialize(_file)
    @file = CSV.read("movies.txt", col_sep: "|").take(5)
    @movies = @file.map { |el| Movie.new(*el) }
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
    @movies.select { |el| el.send(field_name) == field_value }
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

  private

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
