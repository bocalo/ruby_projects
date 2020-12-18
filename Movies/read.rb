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
