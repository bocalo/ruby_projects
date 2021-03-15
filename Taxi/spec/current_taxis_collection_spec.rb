require "./lib/current_taxis_collection"

describe CurrentTaxisCollection do
  subject(:ctc) { CurrentTaxisCollection.new }

  describe "#all" do
    context "two taxis" do
      before do
        ctc.add(current1)
        ctc.add(current2)
      end
      let(:driver1) { Driver.new("Bill Smith", "male", "2000", "5") }
      let(:driver2) { Driver.new("Anna Cruz", "female", "2000", "4") }
      let(:car1) { Car.new("Opel", "car", "425GH") }
      let(:car2) { Car.new("Scoda", "car", "325GH") }
      let(:current1) { CurrentTaxi.new(driver1, car1) }
      let(:current2) { CurrentTaxi.new(driver2, car2) }

      it "returns all taxis" do
        expect(ctc.all.first.to_s).to eq("On the current moment: The driver: Bill Smith - male - 2000 - 5 - The car: Opel - car - 425GH - idle")
      end
    end

    context "two taxis" do
      before do
        ctc.add(current1)
        ctc.add(current2)
      end
      let(:driver1) { Driver.new("Bill Smith", "male", "2000", "5") }
      let(:driver2) { Driver.new("Anna Cruz", "female", "2000", "4") }
      let(:car1) { Car.new("Opel", "car", "425GH") }
      let(:car2) { Car.new("Scoda", "car", "325GH") }
      let(:current1) { CurrentTaxi.new(driver1, car1) }
      let(:current2) { CurrentTaxi.new(driver2, car2) }

      it "returns taxis added in array with id increasing by one" do
        expect(ctc.all).to eq([current1, current2])
      end
    end
  end

  describe "#add" do
    context "one taxi" do
      let(:driver1) { Driver.new("Bill Smith", "male", "2000", "5") }
      let(:car1) { Car.new("Opel", "car", "425GH") }
      let(:current1) { CurrentTaxi.new(driver1, car1) }
      it "returns the array of taxis with one car" do
        expect(ctc.add(current1)).to eq([current1])
      end
    end
    context "two taxis" do
      let(:driver1) { Driver.new("Bill Smith", "male", "2000", "5") }
      let(:driver2) { Driver.new("Anna Cruz", "female", "2000", "4") }
      let(:car1) { Car.new("Opel", "car", "425GH") }
      let(:car2) { Car.new("Scoda", "car", "325GH") }
      let(:current1) { CurrentTaxi.new(driver1, car1) }
      let(:current2) { CurrentTaxi.new(driver2, car2) }
      before do
        ctc.add(current1)
      end

      it "returns the array of cars" do
        expect(ctc.add(current2)).to eq([current1, current2])
      end
    end
  end

  describe "find" do
    context " three taxis" do
      before do
        ctc.add(current1)
        ctc.add(current2)
        ctc.add(current3)
      end
      let(:driver1) { Driver.new("Bill Smith", "male", "2000", "5") }
      let(:driver2) { Driver.new("Anna Cruz", "female", "2000", "4") }
      let(:driver3) { Driver.new("Tim Barks", "male", "2010", "5") }
      let(:car1) { Car.new("Opel", "car", "425GH") }
      let(:car2) { Car.new("Scoda", "car", "325GH") }
      let(:car3) { Car.new("Toyota", "car", "125GH") }
      let(:current1) { CurrentTaxi.new(driver1, car1) }
      let(:current2) { CurrentTaxi.new(driver2, car2) }
      let(:current3) { CurrentTaxi.new(driver3, car3) }
      it "returns the taxi what you need" do
        expect(ctc.find(2)).to eq([current2])
      end
    end
  end

  describe "remove" do
    context " three taxis" do
      before do
        ctc.add(current1)
        ctc.add(current2)
        ctc.add(current3)
        ctc.remove(2)
      end
      let(:driver1) { Driver.new("Bill Smith", "male", "2000", "5") }
      let(:driver2) { Driver.new("Anna Cruz", "female", "2000", "4") }
      let(:driver3) { Driver.new("Tim Barks", "male", "2010", "5") }
      let(:car1) { Car.new("Opel", "car", "425GH") }
      let(:car2) { Car.new("Scoda", "car", "325GH") }
      let(:car3) { Car.new("Toyota", "car", "125GH") }
      let(:current1) { CurrentTaxi.new(driver1, car1) }
      let(:current2) { CurrentTaxi.new(driver2, car2) }
      let(:current3) { CurrentTaxi.new(driver3, car3) }
      it "delete the taxi what you need to remove" do
        expect(ctc.all).to eq([current1, current3])
      end
    end
  end

  # describe "remove" do
  #   context " three cars" do
  #     before do
  #       cc.add(car1)
  #       cc.add(car2)
  #       cc.add(car3)
  #       cc.remove(2)
  #     end
  #     let(:car1) { Car.new("Scoda", "car", "325GH") }
  #     let(:car2) { Car.new("Toyota", "car", "125GH") }
  #     let(:car3) { Car.new("Seat", "car", "825GH") }
  #     it "delete one car what you need to remove" do
  #       expect(cc.all).to eq([car1, car3])
  #     end
  #   end
  # end
end
