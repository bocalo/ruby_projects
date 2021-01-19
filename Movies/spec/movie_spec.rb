require "movie.rb"

describe Movie do
  subject(:movie) { Movie.new("http://imdb.com/title/tt1504320/?ref_=chttp_tt_222", "The King's Speech", 2010, "UK", "2010-12-25", "Biography,Drama,History", "118 min", 8.1, "Tom Hooper", "Colin Firth,Geoffrey Rush,Helena Bonham Carter") }

  describe "#initialize" do
    it "takes an url" do
      expect(movie.url).to eq("http://imdb.com/title/tt1504320/?ref_=chttp_tt_222")
    end
  end

  describe "#to_s" do
    it "returns string from interpolation" do
      expect("#{@country}").to_s eq("UK")
    end
  end

  describe "#inspect" do
    it "returns string" do
      expect("#{@director}").to eq("Tom Hooper")
    end
  end

  describe "#has_genre(word)" do
    context "when a valid word is given and is included" do
      it "returns true" do
        expect(has_genre?("Drama")).to eq(true)
      end
    end

    context "when an incorrect word is given" do
      it "raises ArgumentError" do
        expect { has_genre?("Tragedy") }.to raise_error(ArgumentError)
      end
    end
  end
end
