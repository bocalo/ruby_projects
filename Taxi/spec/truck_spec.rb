require './lib/truck'

describe Truck do
  let(:truck) { Truck.new("Volvo", "truck", "987FD") }

  describe "#to_s" do
    it "returns string with truck's dates" do
      expect(truck.to_s).to eq("The truck: Volvo - truck - 987FD")
    end
  end
end