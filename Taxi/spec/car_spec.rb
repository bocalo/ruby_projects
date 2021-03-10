require "./lib/car"

describe Car do
  let(:car) { Car.new("Mazda", "car", "125GH") }

  describe "#to_s" do
    it "returns string with car's dates" do
      expect(car.to_s).to eq("The car: Mazda - car - 125GH")
    end
  end
end
