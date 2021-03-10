require './lib/bus'

describe Bus do
  let(:bus) { Bus.new("Neoplan", "bus", "345FD") }

  describe "#to_s" do
    it "returns string with bus's dates" do
      expect(bus.to_s).to eq("The bus: Neoplan - bus - 345FD")
    end
  end
end