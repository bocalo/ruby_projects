require_relative "movie_collection.rb"
require_relative "movie.rb"

mc = MovieCollection.new("movies.txt")
#pp mc.all
#pp mc.sort_by(:date)
#pp mc.filter(:date, 1972)
#pp mc.filter(date: "1974")
pp mc.stats(:actors)
pp mc.list_movies("Marlon Brando,Al Pacino,James Caan", :actors)
pp mc.all_fields(:actors)
#pp mc.all_fields(:actors)
#pp mc.make_movies
movie = Movie.new("http://imdb.com/title/tt1504320/?ref_=chttp_tt_222", "The King's Speech", 2010, "UK", "2010-12-25", "Biography,Drama,History", "118 min", 8.1, "Tom Hooper", "Colin Firth,Geoffrey Rush,Helena Bonham Carter")

#pp movie.all.first.actors
#pp movie.all[0]

pp movie.has_genre?("Drama")
#pp movie.to_s
#pp movie.inspect
#pp movie.all.inspect
#pp movie("UK").inspect
