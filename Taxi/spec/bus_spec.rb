require "./lib/bus"

describe Bus do
  let(:bus) { Bus.new("Neoplan", "bus", "345FD") }

  describe "#to_s" do
    it "returns string with bus's dates" do
      expect(bus.to_s).to eq("The bus: Neoplan - bus - 345FD")
    end
  end

  describe "#max_passengers" do
    it "returns capacity of the bus" do
      expect(bus.max_passengers).to eq(30)
    end
  end
end
