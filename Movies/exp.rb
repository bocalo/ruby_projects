file = File.read("movies.txt")
lines = file.split("\n")

movies = lines.map { |line|
  movie = line.split("|")
  { title: movie[1], country: movie[3], output: movie[4], genre: movie[5], duration: movie[6], director: movie[8] }
}

def print_movies(movies)
  movies.each do |movie|
    puts "This movie: #{movie[:title]}, date of output: (#{movie[:output]}), director of the movie: #{movie[:director]} and movie's duration - #{movie[:duration]}. Near forgot: this is #{movie[:genre]} and this movie is from #{movie[:country]}."
  end
  puts
end

new_long = movies.sort_by { |el| el[:duration].to_i }.reverse.take(5)
new_com = movies.select { |el| el[:genre].include?("Comedy") }.compact.take(10)
print_movies(new_com)
print_movies(new_long)
#print_movies(origin)
# print_movies(amount)
#print_movies(arr)

amount = movies.count { |el| !el[:country].include?("USA") }
output = movies.map { |el| el[:output] }.take(10)
title = movies.map { |el| el[:title] }.take(5)
comedy = movies.map { |el| el[:genre] if el[:genre].include?("Comedy") }.compact.take(10)
total = movies.map { |el| el[:country] unless el[:country].include?("USA") }.compact.count
long = movies.map { |el| el[:duration].to_i }.sort.reverse.take(5)
director = movies.map { |el| el[:director] }.uniq
arr = director.sort_by { |el| el.split[1] }.take(10)

origin = movies.select { |el| !el[:country].include?("USA") }.take(10)

def print_list(movies)
  print "The List Of the Directors:\n\n"
  movies.each do |movie|
    puts "#{movie[:director]}"
  end
end

director = movies.select { |el| el[:director] }.uniq.take(10)
print_list(director)

def print_amount(movies)
  movies.each do |movie|
    puts "#{movie[:country]}"
  end
end

origin = movies.select { |el| !el[:country].include?("USA") }.take(10)
print_amount(origin)

amount = movies.count { |el| el[:country].include?("USA") }
print_amount(amount)
