require "./lib/current"

describe Current do
  let(:current) { Current.new("Pall Dell", "Fiat", "idle") }

  describe "#to_s" do
    it "returns string with driver and car at the moment" do
      expect(current.to_s).to eq("On the current moment: Pall Dell - Fiat - idle")
    end
  end

  describe "#idle" do
    let(:driver1) { Driver.new("Bill Smith", "male", "2000", "5") }
    let(:car1) { Car.new("Scoda", "car", "325GH") }
    let(:current1) { Current.new(driver1, car1, "busy") }

    it "returns driver with status busy" do
      expect(current1.idle).to eq("idle")
    end
  end

  describe "#busy" do
    let(:driver2) { Driver.new("Anna Cruz", "female", "2000", "4") }
    let(:car2) { Car.new("Toyota", "car", "125GH") }
    let(:current2) { Current.new(driver2, car2, "idle") }

    it "returns driver with status busy" do
      expect(current2.busy).to eq("busy")
    end
  end
end

# describe "#idle" do
#   let(:current1) { Current.new("Tom Snow", "Shevrolet") }

#   it "returns driver with status idle" do
#     expect(current1.idle).to eq("idle")
#   end
# end
