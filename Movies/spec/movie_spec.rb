# frozen_string_literal: true

require "movie.rb"

describe Movie do
  subject(:movie) { Movie.new("http://imdb.com/title/tt1504320/?ref_=chttp_tt_222", "The King's Speech", 2010, "UK", "2010-12-25", "Biography,Drama,History", "118 min", 8.1, "Tom Hooper", "Colin Firth,Geoffrey Rush,Helena Bonham Carter") }

  describe "#initialize" do
    it "takes an url" do
      expect(movie.url).to eq("http://imdb.com/title/tt1504320/?ref_=chttp_tt_222")
    end

    it "takes a title" do
      expect(movie.title).to eq("The King's Speech")
    end
  end

  describe "#to_s" do
    it "returns string from some movie" do
      expect(movie.to_s).to eq("Movie: http://imdb.com/title/tt1504320/?ref_=chttp_tt_222 - The King's Speech - 2010 - UK - 2010-12-25 - Biography,Drama,History - 118 min - 8.1 - Tom Hooper - Colin Firth,Geoffrey Rush,Helena Bonham Carter")
    end
  end

  describe "#inspect" do
    it "returns string inspected" do
      expect(movie.inspect).to eq("Movie: The King's Speech(2010) - Tom Hooper - Colin Firth,Geoffrey Rush,Helena Bonham Carter - UK")
    end
  end

  describe "#genre?(word)" do
    context "when a valid word is given" do
      it "returns te same word" do
        expect(movie.has_genre?("Drama")).to eq(true)
      end
    end

    context "when an incorrect word is given" do
      it "raises ArgumentError" do
        expect { movie.has_genre?("Tragedy") }.to raise_error("Genre not found")
      end
    end
  end
end
