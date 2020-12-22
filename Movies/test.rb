require "csv"
movies = CSV.read("movies.txt", headers: [:url, :title, :date, :country, :output, :genre, :duration, :rating, :director, :actors], col_sep: "|", converters: :numeric)

# CSV.foreach("movies.txt", col_sep: "|", converters: :numeric) do |row|
#   p row[1]
# end
#pp movies[0]
#pp movies[0][:title]
# pp movies[0][:url]
# pp movies[0][:date]
# pp movies[0][:country]
# pp movies[0][:output]
# pp movies[0][:genre]
# pp movies[0][:duration]
# pp movies[0][:rating]
# pp movies[0][:director]
# pp movies[0][:actors]
# pp movies[0][:director]

# title = movies[0][1]
# pp title

# Movies = OpenStruct.new(:title, :country, :output, :genre, :duration, :director)

# file = File.read("movies.txt")
# lines = file.split("\n")

# movies = lines.map { |line|
#   movie = line.split("|")
#   { title: movie[1], country: movie[3], output: movie[4], genre: movie[5], duration: movie[6], director: movie[8] }
# }

# def print_movies(movies)
#   movies.each do |movie|
#     puts "\nThis movie: #{movie[:title]}, date of output: (#{movie[:output]}), director of the movie: #{movie[:director]} and movie's duration - #{movie[:duration]}. Near forgot: this is #{movie[:genre]} and this movie is from #{movie[:country]}."
#   end
# end

new_long = movies.sort_by { |el| el[:duration].to_i }.reverse.take(5)
pp new_long
# new_com = movies.select { |el| el[:genre].include?("Comedy") }.compact.take(10)
# director = movies.map { |el| el[:director] }.uniq
# arr = director.sort_by { |el| el.split[1] }.take(10)
# puts "The list of 10 famous directors: #{arr}"
# total = movies.map { |el| el[:country] unless el[:country].include?("USA") }.compact.count
# puts "The amount of the movies not from USA is: #{total}"

# print_movies(new_long)
# print_movies(new_com)
# print_movies(new_long)
