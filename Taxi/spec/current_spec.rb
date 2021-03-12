require "./lib/current"

describe Current do
  let(:driver) { Driver.new("Tim Barks", "male", "2010", "5") }
  let(:car) { Car.new("Opel", "car", "425GH") }
  let(:current) { Current.new(driver, car) }

  describe "#to_s" do
    it "returns string with driver and car at the moment" do
      expect(current.to_s).to eq("On the current moment: The driver: Tim Barks - male - 2010 - 5 - The car: Opel - car - 425GH - idle")
    end
  end

  describe "#idle" do
    let(:driver1) { Driver.new("Bill Smith", "male", "2000", "5") }
    let(:car1) { Car.new("Scoda", "car", "325GH") }
    let(:current1) { Current.new(driver1, car1) }

    it "returns driver with status busy" do
      current1.idle
      expect(current1.status).to eq("idle")
    end
  end

  describe "#busy" do
    let(:driver2) { Driver.new("Anna Cruz", "female", "2000", "4") }
    let(:car2) { Car.new("Toyota", "car", "125GH") }
    let(:current2) { Current.new(driver2, car2) }

    it "returns driver with status busy" do
      current2.busy
      expect(current2.status).to eq("busy")
    end
  end
end

