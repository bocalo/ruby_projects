
file = File.read("movies.txt")
lines = file.split("\n")

movies = lines.map { |line| movie = line.split("|") 
   {title: movie[1], country: movie[3], output: movie[4], genre: movie[5], duration: movie[6], director: movie[8]}
}

def print_movies(movies)
   movies.each do |movie|
     puts "This movie: #{movie[:title]}, date of output: (#{movie[:output]}), director of the movie: #{movie[:director]} and movie's duration - #{movie[:duration]}. Near forgot: this is #{movie[:genre]} and this movie is from #{movie[:country]}." 
   end
end

new_com = movies.select { |el| el if el[:genre].include?("Comedy") }.compact.take(10)
 print_movies(new_com)

output = movies.map { |el| el[:output] }.take(10)
title = movies.map { |el| el[:title] }.take(5)
comedy = movies.map { |el| el[:genre] if el[:genre].include?("Comedy") }.compact.take(10)
new_com = movies.select { |el| el[:genre].include?("Comedy") }.compact.take(10)
total = movies.map { |el| el[:country] unless el[:country].include?("USA") }.compact.count
long = movies.map { |el| el[:duration].to_i }.sort.reverse.take(5)
director = movies.map { |el| el[:director] }.uniq
arr = director.sort_by do |el|
   el.split[1]
end
arr.take(10)

