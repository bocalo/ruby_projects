
file = File.read("movies.txt")
lines = file.split("\n")

movies = lines.map { |line| movie = line.split("|") 
   {title: movie[1], country: movie[3], output: movie[4], genre: movie[5], duration: movie[6], director: movie[8]}
}


comedy = movies.map { |el| el[:genre] if el[:genre].include?("Comedy") }.compact

#output = movies.map { |el| puts "#{el[:title]}: #{(el[:output])}; #{el[:genre]} - #{el[:duration]} and director: #{el[:director]}" }.take(5)

#p output

long = movies.map { |el| el[:duration]}.sort.reverse.take(5)

director = movies.map { |el| el[:director] }.uniq.sort.take(5)
#p director

total = movies.map { |el| el[:country] != "USA" }.count



def print_info(movies)
  movies.each { |el| el[:title] }
end

print_info([{title: movie[1], country: movie[3], output: movie[4], genre: movie[5], duration: movie[6], director: movie[8]}])







# movies = []

# file = File.read("movies.txt")
# lines = file.split("\n")

# lines.each do |line|
#    movie = line.split("|")
#    movies.push({ title: movie[1], country: movie[3], output: movie[4], genre: movie[5], duration: movie[6], director: movie[8] })

   #p movies
  #  movies = [
  #    { 
  #     title: movie[1], 
  #     country: movie[3],
  #     output: movie[4],
  #     genre:  movie[5],
  #     durattion: movie[6] 
  #     director: movie[8]
  #    }
  #  ]
#end

# movies.each do |film|
#   p film[:duration] 
# end

#movies.each do |film|
  #p film[:title], film[:genre] if film[:genre].include?("Comedy") 
#end

 




#movies = { title: movie[1], country: movie[3], output: movie[4], genre: movie[5], duration: movie[6] }
  #p movies.sort_by { |key, val| val }

#movies.each { |key, val| puts "#{key} is #{val}" }
  #movies.select { |key, val| puts "#{key} is #{val}" if val.include?("Comedy") }
  
  # title, genre = movie.values_at(1, 5)
  # p movies[:title] if movies[:genre].include?("Comedy")
  