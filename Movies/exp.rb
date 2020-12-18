file = File.read("movies.txt")
lines = file.split("\n")

movies = lines.map { |line|
  movie = line.split("|")
  { title: movie[1], country: movie[3], output: movie[4], genre: movie[5], duration: movie[6], director: movie[8] }
}

def print_movies(movies)
  print "The list of the directors:\n"
  movies.each do |movie|
    puts "\n#{movie[:director]}\n"
    puts "\nThis movie: #{movie[:title]}, date of output: (#{movie[:output]}), director of the movie: #{movie[:director]} and movie's duration - #{movie[:duration]}. Near forgot: this is #{movie[:genre]} and this movie is from #{movie[:country]}. The amount of the movies not from USA: #{movie[:country]}."
  end
end

new_long = movies.sort_by { |el| el[:duration].to_i }.reverse.take(5)
new_com = movies.select { |el| el[:genre].include?("Comedy") }.compact.take(10)
total = movies.map { |el| el[:country] unless el[:country].include?("USA") }.compact.count
director = movies.map { |el| el[:director] }.uniq
arr = director.sort_by { |el| el.split[1] }.take(10)
print_movies(new_com)
print_movies(new_long)
#print_movies(origin)
# print_movies(amount)
#print_movies(arr)
