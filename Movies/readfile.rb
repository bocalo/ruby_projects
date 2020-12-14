# file = ARGV(0)
# puts "Opening file:#{file}"
# myFile = File.open(file)
# txt = myFile.read()
# puts txt

movies = []

file = File.read("movies.txt")
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

