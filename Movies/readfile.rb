
# file = ARGV[0]
# default_file = "movies.txt"
# if file == nil
#   file = default_file
#end
# current_path = File.dirname(__FILE__)
#file_path = current_path + "/movies.txt"

file = ARGV[0] || 'movies.txt'

file_path = file

if File.exist?(file_path)
  f = File.new(file_path, "r")
  lines = f.readlines
  f.close
  puts lines
else
  puts "File not found!"
end

file = File.read("movies.txt")

movies = []
lines = file.split("\n")

lines.each do |line|
  movie = line.split("|")
  hash = {title: movie[1], rating: movie[7]}
  name = hash[:title]
  rating = hash[:rating].to_f
  acc = ((rating - 8.to_i) * 10).round()
  stars = "*" * acc
  rating = stars
  if movie[1].include?("Max")
    puts "This movie has name #{name} has rating #{rating}"
  end
end


# 1. Вариант с title = movie[1]
#           rating = movie[7]


# movies = []

# file = File.read("movies.txt")
# lines = file.split("\n")

# lines.each do |line|
#   movie = line.split("|")
#   title = movie[1]
#   rating = movie[7]
#   acc = ((rating.to_f - 8.to_i) * 10).round()
#   stars = "*" * acc
#   rating = stars
#   if movie[1].include?("Max")
#     puts "This movie has name #{title} has rating #{rating}"
#   end
# end

#########

# 2. Вариант с  title, rating = movie.values_at(1, 7)

# movies = []

# file = File.read("movies.txt")
# lines = file.split("\n")

# lines.each do |line|
#   movie = line.split("|")
#   title, rating = movie.values_at(1, 7)
#   acc = ((rating.to_f - 8.to_i) * 10).round()
#   stars = "*" * acc
#   rating = stars
#   if movie[1].include?("Max")
#     puts "This movie has name #{title} has rating #{rating}"
#   end
# end