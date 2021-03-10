require "./lib/vehicle"
require "./lib/car"

describe Vehicle do
  let(:vehicle) { Vehicle.new("Scoda", "car", "325GH") }

  describe "#to_s" do
    it "returns string with vehicle's dates" do
      expect(vehicle.to_s).to eq("The car: Scoda - car - 325GH")
    end
  end

  describe "#can_take_passengers?" do
    context "we have 3 passengers" do
      it "returns true if the vehicle can take 3 passengers" do
        expect(vehicle.can_take_passengers?(3)).to eq(true)
      end

      it "returns false if the vehicle can't take 3 passengers" do
        expect(vehicle.can_take_passengers?(10)).to eq(false)
      end
    end
  end

  describe "::for" do
    let(:car) { Car.new("Mazda", "car", "225GH") }
    let(:minivan) { Minivan.new("Ford", "minivan", "589Lk") }
    let(:bus) { Bus.new("Neoplan", "bus", "345FD") }
    let(:truck) { Truck.new("Volvo", "truck", "854JF") }

    it "returns car if vehicle's type as car" do
      expect(Vehicle.for("Mazda", "car", "225GH").type).to eq("car")
    end
    it "returns car if vehicle's model as 'Mazda'" do
      expect(Vehicle.for("Mazda", "car", "225GH").model).to eq("Mazda")
    end

    it "returns car if vehicle's number as '125GH'" do
      expect(Vehicle.for("Mazda", "car", "225GH").number).to eq("225GH")
    end
  end
end
