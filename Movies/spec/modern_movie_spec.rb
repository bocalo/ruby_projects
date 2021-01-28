require "modern_movie.rb"

describe ModernMovie do
  subject(:modern) {
    ModernMovie.new("http://imdb.com/title/tt0068646/?ref_=chttp_tt_2",
                    "The Godfather",
                    "1972",
                    "USA",
                    "1972-03-24",
                    "Crime,Drama",
                    "175 min",
                    "9.2",
                    "Francis Ford Coppola",
                    "Marlon Brando,Al Pacino,James Caan")
  }

  describe "#initialize" do
    it "takes an url" do
      expect(modern.url).to eq("http://imdb.com/title/tt0068646/?ref_=chttp_tt_2")
    end

    it "takes a title" do
      expect(modern.title).to eq("The Godfather")
    end
  end

  describe "#to_s" do
    it "returns string from classic movie" do
      expect(modern.to_s).to eq("(1968-2000): The title The Godfather - modern movie, the actors Marlon Brando,Al Pacino,James Caan are playing there")
    end
  end
end
