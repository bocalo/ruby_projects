# frozen_string_literal: true

require "./lib/movie_collection.rb"

describe MovieCollection do
  subject(:mc) { MovieCollection.new("movies.txt") }

  describe "#all" do
    it "returns all movies" do
      expect(mc.all.first.to_s).to eq("Movie: http://imdb.com/title/tt0111161/?ref_=chttp_tt_1 - The Shawshank Redemption - 1994 - USA - 1994-10-14 - Crime,Drama - 142 min - 9.3 - Frank Darabont - Tim Robbins,Morgan Freeman,Bob Gunton")
    end
  end

  describe "#sort_by(field)" do
    context "when a valid word is given" do
      it "sorted dates according the current field" do
        expect(mc.sort_by(:date).map(&:url)).to eq(
          ["http://imdb.com/title/tt0050083/?ref_=chttp_tt_5",
           "http://imdb.com/title/tt0068646/?ref_=chttp_tt_2",
           "http://imdb.com/title/tt0071562/?ref_=chttp_tt_3",
           "http://imdb.com/title/tt0111161/?ref_=chttp_tt_1",
           "http://imdb.com/title/tt0468569/?ref_=chttp_tt_4"]
        )
      end
    end

    context "when the wrong word is given" do
      it "raises StandardError" do
        expect { mc.sort_by(:car) }.to raise_error("There is no such date")
      end
    end
  end

  describe "#filter(field)" do
    it "returns movie with filtered date" do
      expect(mc.filter(date: "1974").to_s).to eq("[Movie: The Godfather: Part II(1974) - Francis Ford Coppola - Al Pacino,Robert De Niro,Robert Duvall - USA]")
    end
  end

  describe "#stats(field_name)" do
    it "returns statistics according the field name" do
      expect(mc.stats(:director)).to eq("Frank Darabont" => 1,
                                        "Francis Ford Coppola" => 2,
                                        "Christopher Nolan" => 1,
                                        "Sidney Lumet" => 1)
    end
  end
end
