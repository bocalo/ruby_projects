require_relative "movie"

class AncientMovie < Movie
  def to_s
    "(1900-1945): The title #{title} - old movie (#{date} year)"
  end
end
