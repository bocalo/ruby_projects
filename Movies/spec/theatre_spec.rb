require "theatre.rb"

describe Theatre do
  subject(:theatre) { Theatre.new("http://imdb.com/title/tt1504320/?ref_=chttp_tt_222", "The King's Speech", 2010, "UK", "2010-12-25", "Biography,Drama,History", "118 min", 8.1, "Tom Hooper", "Colin Firth,Geoffrey Rush,Helena Bonham Carter") }

  describe "#initialize" do
    it "takes a country" do
      expect(theatre.country).to eq("UK")
    end

    it "takes a director's name" do
      expect(theatre.director).to eq("Tom Hooper")
    end
  end

  describe "#show(start, fin)" do
    it "prints the title of the movie and the time of show's start and show's end" do
      expect(theatre.show("19,00", "21,00")).to eq("Now showing: The King's Speech - 19,00-21,00")
    end
  end
end
