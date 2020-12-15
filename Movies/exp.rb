
file = File.read("movies.txt")
lines = file.split("\n")

lines.each do |line|
  movie = line.split("|")
  
  movies = { title: movie[1], country: movie[3], output: movie[4], genre: movie[5], duration: movie[6] }
  p movies.sort_by { |key, val| val }
  
  
  #movies.each { |key, val| puts "#{key} is #{val}" }
  #movies.select { |key, val| puts "#{key} is #{val}" if val.include?("Comedy") }
  

  title, genre = movie.values_at(1, 5)
  p movies[:title] if movies[:genre].include?("Comedy")
  
  #p title
  
end








