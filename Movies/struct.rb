require "csv"

movie = CSV.open("movies.csv", "w")

movies.CSV.read("movies.txt/to/movie.csv", "wb")
CSV.foreach("movies.txt/to/movie.csv", "wb") do |movie|
  movie << ["title", "country", "output", "genre", "duration", "director"]
  movie << [movie[1], movie[3], movie[4], movie[5], movie[6], movie[8]]
end

# file = File.read("movies.txt")
# lines = file.split("\n")

# movies = lines.map { |line|
#   movie = line.split("|")
#   { title: movie[1], country: movie[3], output: movie[4], genre: movie[5], duration: movie[6], director: movie[8] }
# }

# csv = CSV.open("movies.csv", "a+")
# csv.read

def print_movies(movies)
  movies.each do |movie|
    puts "\nThis movie: #{movie[:title]}, date of output: (#{movie[:output]}), director of the movie: #{movie[:director]} and movie's duration - #{movie[:duration]}. Near forgot: this is #{movie[:genre]} and this movie is from #{movie[:country]}."
  end
end

new_long = movies.sort_by { |el| el[:duration].to_i }.reverse.take(5)
new_com = movies.select { |el| el[:genre].include?("Comedy") }.compact.take(10)
director = movies.map { |el| el[:director] }.uniq
arr = director.sort_by { |el| el.split[1] }.take(10)
puts "The list of 10 famous directors: #{arr}"
total = movies.map { |el| el[:country] unless el[:country].include?("USA") }.compact.count
puts "The amount of the movies not from USA is: #{total}"

print_movies(new_long)
print_movies(new_com)
print_movies(new_long)
