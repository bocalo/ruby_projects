
file = File.read("movies.txt")
lines = file.split("\n")

movies = lines.map { |line| movie = line.split("|") 
   {title: movie[1], country: movie[3], output: movie[4], genre: movie[5], duration: movie[6], director: movie[8]}
}


comedy = movies.map { |el| el[:genre] if el[:genre].include?("Comedy") }.compact

output = movies.map { |el| el[:output] }.take(10)

long = movies.map { |el| el[:duration].to_i }.sort.reverse.take(5)

director = movies.map.sort_by { |el| el[:director].split(' ').last }.uniq
director = movies.map { |el| el[:director] }.uniq
arr = director.sort_by do |el|
   el.split[1]
end

total = movies.map { |el| el[:country] unless el[:country].include?("USA") }.compact.count

output = movies.map { |el| puts "#{el[:title]}: #{(el[:output])}; #{el[:genre]} - #{el[:duration]} and director: #{el[:director]}" }.take(5)

#output = movies.map { |el| puts "#{el[:title]}: #{el[:output]}; #{el[:comedy]}" }

# print_info([{title: movie[1], country: movie[3], output: movie[4], genre: movie[5], duration: movie[6], director: movie[8]}])



# def print_info(arr)
#   print "Print numbers: #{arr}"
# end

# print_info([1, 2, 3])


def print_info(movies)
  print "#{total}"
end

print_info("http://imdb.com/title/tt0111161/?ref_=chttp_tt_1|The Shawshank Redemption|1994|USA|1994-10-14|Crime,Drama|142 min|9.3|Frank Darabont|Tim Robbins,Morgan Freeman,Bob Gunton
http://imdb.com/title/tt0068646/?ref_=chttp_tt_2|The Godfather|1972|USA|1972-03-24|Crime,Drama|175 min|9.2|Francis Ford Coppola|Marlon Brando,Al Pacino,James Caan
http://imdb.com/title/tt0071562/?ref_=chttp_tt_3|The Godfather: Part II|1974|USA|1974-12-20|Crime,Drama|200 min|9.1|Francis Ford Coppola|Al Pacino,Robert De Niro,Robert Duvall"
)


