movies = []

file = File.read("movies.txt")
lines = file.split("\n")
lines.each do |line|
  arr = line.split('|')
  name = arr[1]
  rating = arr[7].to_f
  acc = ((rating - 8.to_i) * 10).round()
  stars = "*" * acc
  rating = stars
  if name.include?("Max")
    movies.push(name, rating)
    puts "This movie has title #{name} and #{rating}"
  end
end








