# Первое задание

arg = ARGV[0]

if arg == "Titanic"
  puts "Titanic is a bad movie"
elsif arg == "Matrix"
  puts "Matrix is a good movie"
else
  puts "Haven't seen something yet"
end

# Второе задание
arr = ARGV
#puts arr.to_s

arr.each do |word|
  if arr.include?(word)
    puts "This is a good movie"
  else
    puts "So so"
  end
  arr
end
