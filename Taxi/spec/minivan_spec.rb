require "./lib/minivan"

describe Minivan do
  let(:minivan) { Minivan.new("Fiat", "minivan", "435BL") }

  describe "#to_s" do
    it "returns string with minivan's dates" do
      expect(minivan.to_s).to eq("The minivan: Fiat - minivan - 435BL")
    end
  end
end
