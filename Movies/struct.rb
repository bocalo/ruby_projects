require "csv"

movies = CSV.read("movies.txt", headers: [:url, :title, :date, :country, :output, :genre, :duration, :rating, :director, :actors], col_sep: "|", converters: :numeric)

def print_movies(movies)
  movies.each do |movie|
    puts "\nThe url #{movie[:url]} of this movie: #{movie[:title]}, date of output: (#{movie[:output]}), director of the movie: #{movie[:director]} and movie's duration - #{movie[:duration]}. Near forgot: this is #{movie[:genre]} and this movie is from #{movie[:country]}."
  end
end

#pp movies[0]
# pp movies[0][:title]
# pp movies[0][:url]
# pp movies[0][:country]
# pp movies[0][:output]
# pp movies[0][:genre]
# pp movies[0][:duration]
# pp movies[0][:director]

new_long = movies.sort_by { |el| el[:duration].to_i }.reverse.take(5)
#pp new_long
new_com = movies.select { |el| el[:genre].include?("Comedy") }.compact.take(10)
#pp new_com
url = movies.map { |el| el[:url] }.uniq
#pp url
director = movies.map { |el| el[:director] }.uniq
#p director
arr = director.sort_by { |el| el.split[1] }.take(10)
#p arr
# puts "The list of 10 famous directors: #{arr}"
# total = movies.map { |el| el[:country] unless el[:country].include?("USA") }.compact.count
# puts "The amount of the movies not from USA is: #{total}"

#print_movies(new_long)
#print_movies(new_com)
#print_movies(new_long)
