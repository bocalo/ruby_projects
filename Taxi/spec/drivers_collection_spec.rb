require "./lib/drivers_collection"

describe DriversCollection do
  subject(:dc) { DriversCollection.new }

  describe "#all" do
    context "two drivers" do
      before do
        dc.add(driver1)
        dc.add(driver2)
      end
      let(:driver1) { Driver.new("Bill Smith", "male", "2000", "5") }
      let(:driver2) { Driver.new("Anna Cruz", "female", "2000", "4") }

      it "returns all drivers" do
        expect(dc.all.first.to_s).to eq("The driver: Bill Smith - male - 2000 - 5")
      end
    end

    context "two drivers" do
      before do
        dc.add(driver1)
        dc.add(driver2)
      end
      let(:driver1) { Driver.new("Bill Smith", "male", "2000", "5") }
      let(:driver2) { Driver.new("Anna Cruz", "female", "2000", "4") }

      it "returns drivers added in array with id increasing by one" do
        expect(dc.all).to eq([driver1, driver2])
      end
    end
  end

  describe "#add" do
    context "one driver" do
      let(:driver1) { Driver.new("Bill Smith", "male", "2000", "5") }
      it "returns the array of cars with one car" do
        expect(dc.add(driver1)).to eq([driver1])
      end
    end
    context "two cars" do
      let(:driver1) { Driver.new("Bill Smith", "male", "2000", "5") }
      let(:driver2) { Driver.new("Anna Cruz", "female", "2000", "4") }
      before do
        dc.add(driver1)
      end

      it "returns the array of drivers" do
        expect(dc.add(driver2)).to eq([driver1, driver2])
      end
    end
  end

  describe "find" do
    context " three drivers" do
      before do
        dc.add(driver1)
        dc.add(driver2)
        dc.add(driver3)
      end
      let(:driver1) { Driver.new("Bill Smith", "male", "2000", "5") }
      let(:driver2) { Driver.new("Anna Cruz", "female", "2000", "4") }
      let(:driver3) { Driver.new("Tim Barks", "male", "2010", "5") }
      it "returns the driver what you need" do
        expect(dc.find(2)).to eq([driver2])
      end
    end
  end

  describe "remove" do
    context " three drivers" do
      before do
        dc.add(driver1)
        dc.add(driver2)
        dc.add(driver3)
        dc.remove(2)
      end
      let(:driver1) { Driver.new("Bill Smith", "male", "2000", "5") }
      let(:driver2) { Driver.new("Anna Cruz", "female", "2000", "4") }
      let(:driver3) { Driver.new("Tim Barks", "male", "2010", "5") }
      it "delete the driver what you need to remove" do
        expect(dc.all).to eq([driver1, driver3])
      end
    end
  end
end
