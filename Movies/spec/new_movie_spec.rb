require "new_movie.rb"

describe NewMovie do
  subject(:nuevo) {
    NewMovie.new("http://imdb.com/title/tt2106476/?ref_=chttp_tt_118",
                 "The Hunt",
                 "2012",
                 "Denmark",
                 "2013-01-10",
                 "Drama",
                 "115 min",
                 "8.3",
                 "Thomas Vinterberg",
                 "Mads Mikkelsen,Thomas Bo Larsen,Annika Wedderkopp")
  }

  describe "#initialize" do
    it "takes an url" do
      expect(nuevo.url).to eq("http://imdb.com/title/tt2106476/?ref_=chttp_tt_118")
    end

    it "takes a title" do
      expect(nuevo.title).to eq("The Hunt")
    end
  end

  describe "#to_s" do
    it "returns string from classic movie" do
      expect(nuevo.to_s).to eq("Movie(1900-1945): The title - The Hunt - old movie (2012 year)")
    end
  end
end
