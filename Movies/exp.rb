
file = File.read("movies.txt")
lines = file.split("\n")

movies = lines.map { |line| movie = line.split("|") 
   {title: movie[1], country: movie[3], output: movie[4], genre: movie[5], duration: movie[6], director: movie[8]}
}

def print_movies(comedy)
   print "Print date of comedy: #{comedy} "
end
comedy = movies.map { |el| el[:genre] if el[:genre].include?("Comedy") }.compact.take(5)
print_movies(comedy)


def print_movies(movies)
   movies.each { |title| print "The movie has title #{title} and #{comedy} and #{duration} and #{output} and #{total} and #{director} and #{long}" }
end
output = movies.map { |el| el[:output] }.take(10)
title = movies.map { |el| el[:title] }.take(5)
comedy = movies.map { |el| el[:genre] if el[:genre].include?("Comedy") }.compact.take(5)
total = movies.map { |el| el[:country] unless el[:country].include?("USA") }.compact.count
long = movies.map { |el| el[:duration].to_i }.sort.reverse.take(5)
director = movies.map { |el| el[:director] }.uniq
arr = director.sort_by do |el|
   el.split[1]
end
arr.take(10)

print_movies(movies)
print_movies(total)
print_movies(output)
print_movies(title)
print_movies(comedy)
print_movies(director)


# title = movies.map { |el| el[:title] }.take(5)
# output = movies.map { |el| el[:output] }.take(10)
# long = movies.map { |el| el[:duration].to_i }.sort.reverse.take(5)
# director = movies.map.sort_by { |el| el[:director].split(' ').last }.uniq
# director = movies.map { |el| el[:director] }.uniq
# arr = director.sort_by do |el|
#    el.split[1]
# end
# arr.take(10)
# total = movies.map { |el| el[:country] unless el[:country].include?("USA") }.compact.count

#output = movies.map { |el| puts "#{el[:title]}: #{(el[:output])}; #{el[:genre]} - #{el[:duration]} and director: #{el[:director]}" }.take(5)

#output = movies.map { |el| puts "#{el[:title]}: #{el[:output]}: #{el[:comedy]}" }

# def print_info(movies)
#     movies.split(' ').each { |el| p el} 
# end

# print_info("The Night of the Hunter: 1955-11-24; Crime,Drama,Film-Noir - 92 min and director: Charles Laughton")



# def print_info(arr)
#   print "Print numbers: #{arr}"
# end

# print_info([1, 2, 3])


# def print_info()
#     p country
# end

# print_info("The Night of the Hunter: 1955-11-24; Crime,Drama,Film-Noir - 92 min and director: Charles Laughton")

# def print_movies(comedy)
#    print "The movies #{comedy} "
# end
# comedy = movies.map { |el| el[:genre] if el[:genre].include?("Comedy") }.compact.take(5)

