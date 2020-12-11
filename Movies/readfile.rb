# file = ARGV(0)

# puts "Opening file:#{file}"

# myFile = File.open(file)
# txt = myFile.read()
# puts txt



# file = File.open("movies.txt", "r")
#   puts file.read
# file.close()










# File.open("movies.txt", "r") do |file|
#   puts file.read()
# end

# file = File.open("movies.txt", "r")
# puts file.read
# file.close()


# lines = []
# file = File.open("movies.txt", "r")

# while (line = file.gets)
#   lines << line if line.include?("Max")
# end
# file.close

# lines.each { |l| puts l }

lines = []

file = File.open("movies.txt", "r")
movies = []

while (line = file.gets)
  arr = line.split("|")
  if arr[1].include?("Max")
    movies.push({title: arr[1], raiting: arr[7] })
  end
  if arr[7] > 8
    ((arr[7] - 8) * 10).round(1) 
  end
  movies
end

file.close

x = movies.map { |movie| movie[:title] }
y = movies.map { |movie| movie[:raiting] }

puts x
puts y 