require "classic_movie.rb"

describe ClassicMovie do
  subject(:classic) {
    ClassicMovie.new("http://imdb.com/title/tt0050083/?ref_=chttp_tt_5",
                     "12 Angry Men",
                     "1957",
                     "USA",
                     "1957-04",
                     "Crime,Drama",
                     "96 min",
                     "8.9",
                     "Sidney Lumet",
                     "Henry Fonda,Lee J. Cobb,Martin Balsam")
  }

  describe "#initialize" do
    it "takes an url" do
      expect(classic.url).to eq("http://imdb.com/title/tt0050083/?ref_=chttp_tt_5")
    end

    it "takes a title" do
      expect(classic.title).to eq("12 Angry Men")
    end
  end

  describe "#to_s" do
    it "returns string from classic movie" do
      expect(classic.to_s).to eq("(1945-1968): The title 12 Angry Men - classic movie, the director Sidney Lumet (there are yet 10( director's movies in the list))")
    end
  end
end
