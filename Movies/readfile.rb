# file = ARGV(0)
# puts "Opening file:#{file}"
# myFile = File.open(file)
# txt = myFile.read()
# puts txt

movies = []

file = File.read("movies.txt")
line = file.split("\n")


line.each do |el|
  movie = el.split("|")
  if movie[1].include?("Max") 
    movies.push({title: movie[1], raiting: movie[7]})
  end
end

 x = movies.map { |movie| movie[:title] }
 y = movies.map { |movie| movie[:raiting] }

 print x, y
 

# if movie[7].to_i > 8
#   movie[7] = (movie[7].to_i - 8).round(1) * 10 * "*"
# end

 

