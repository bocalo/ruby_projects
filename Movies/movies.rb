# # Первое задание
arg = ARGV[0]

if arg == "Titanic"
  puts "Titanic is a bad movie"
elsif arg == "Matrix"
  puts "Matrix is a good movie"
else
  puts "Haven't seen something yet"
end

# # Второе задание
 arg = ARGV[0]
# #puts arr.to_s

fav_movies = ["Titanic", "Matrix", "Fargo"]

for arg in ARGV
  if fav_movies.include?(arg)
    puts "This is a good movie"
  else
    puts "So so"
  end
end





