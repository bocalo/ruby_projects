require "ancient_movie.rb"

describe AncientMovie do
  subject(:ancient) {
    AncientMovie.new("http://imdb.com/title/tt0015864/?ref_=chttp_tt_132",
                     "The Gold Rush",
                     "1925",
                     "USA",
                     "1925",
                     "Adventure,Comedy,Drama",
                     "95 min",
                     "8.3",
                     "Charles Chaplin",
                     "Charles Chaplin,Mack Swain,Tom Murray")
  }

  describe "#initialize" do
    it "takes an url" do
      expect(ancient.url).to eq("http://imdb.com/title/tt0015864/?ref_=chttp_tt_132")
    end

    it "takes a title" do
      expect(ancient.title).to eq("The Gold Rush")
    end
  end

  describe "#to_s" do
    it "returns string from ancient movie" do
      expect(ancient.to_s).to eq("(1900-1945): The title The Gold Rush - old movie (1925 year)")
    end
  end
end
