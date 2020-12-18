# if (ARGV[0] == nil)
#   abort "Put any argument!"
# end

# File.open(ARGV[0]).each do |line|
#   puts line
# end
file = ARGV[0]

current_path = File.dirname(__FILE__)
file_path = current_path + file

if File.exist?(file_path)
  f = File.new(file_path, "r")
  lines = f.readlines
  f.close
  puts lines
else
  puts "File not found!"
end

file = File.read(file_path)

movies = []

file = File.read(file_path)
lines = file.split("\n")
lines.each do |line|
  arr = line.split("|")
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
#comedy = movies.map { |el| el[:genre] if el[:genre].include?("Comedy") }.compact.take(10)

# director = movies.select { |el| el[:director] }.uniq.take(10)
# print_list(director)
#long = movies.map { |el| el[:duration].to_i }.sort.reverse.take(5)
# output = movies.map { |el| el[:output] }.take(10)
#title = movies.map { |el| el[:title] }.take(5)
# amount = movies.count { |el| el[:country].include?("USA") }
#origin = movies.select { |el| !el[:country].include?("USA") }.take(10)

# def print_list(movies)
#   print "The List Of the Directors:\n\n"
#   movies.each do |movie|
#     puts "#{movie[:director]}"
#   end
# end

# def print_amount(movies)
#   movies.each do |movie|
#     puts "#{movie[:country]}"
#   end
# end
