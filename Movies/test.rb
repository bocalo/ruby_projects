require "csv"
require "ostruct"
require "date"

movies = CSV.read("movies.txt", headers: [:url, :title, :date, :country, :output, :genre, :duration, :rating, :director, :actors], col_sep: "|", converters: :numeric)

film = movies.map do |movie|
  movie = OpenStruct.new(movie)
end

# def print_movies(movies)
#   movies.each do |movie|
#     puts "\nThe url #{movie[:url]} of this movie: #{movie[:title]}, date of output: (#{movie[:output]}), director of the movie: #{movie[:director]} and movie's duration - #{movie[:duration]}. Near forgot: this is #{movie[:genre]} and this movie is from #{movie[:country]}."
#   end
# end

out = film.map { |el| el.output }

some = out.delete_if { |el| el.to_s.length != 10 }
#pp some
count = Hash.new(0)
some.each do |el|
  if el = Date.parse(el).mon
    count[el] += 1
  end
  count
end
one = count.sort_by { |el| el[0] }

one.each do |month, count|
  month = Date.new(2001, month)
  month = month.strftime("%B")
  puts "The month: #{month}. The amount of the movies: #{count}"
end

# new_long = film.sort_by { |el| el.duration.to_i }.reverse.take(5)
# #pp new_long

# new_com = film.select { |el| el.genre.include?("Comedy") }.compact.take(10)

# url = film.map { |el| el.url }.uniq

# director = film.map { |el| el.director }.uniq

# arr = director.sort_by { |el| el.split[1] }.take(10)
