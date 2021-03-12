require "./lib/vehicle"
require "./lib/car"

describe Vehicle do
  let(:vehicle) { Vehicle.new("Scoda", "car", "325GH") }

  describe "#to_s" do
    it "returns string with vehicle's dates" do
      expect(vehicle.to_s).to eq("The car: Scoda - car - 325GH")
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

  describe "#can_take_passengers?" do
    context "one bus" do
      let(:bus) { Bus.new("Neoplan", "bus", "345FD") }

      it "returns true if number of passengers less or equal of amount of places in the car" do
        expect(bus.can_take_passengers?(9)).to eq(true)
      end
    end
    context "one minivan" do
      let(:minivan) { Minivan.new("Ford", "minivan", "589Lk") }

      it "returns false if number of passengers more than amount of places in the car" do
        expect(minivan.can_take_passengers?(90)).to eq(false)
      end
    end
  end
end
