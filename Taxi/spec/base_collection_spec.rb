require "./lib/base_collection"

describe BaseCollection do
  subject(:bc) { BaseCollection.new }

  describe "#all" do
    context "two items" do
      before do
        bc.add(item1)
        bc.add(item2)
      end
      let(:item1) { Car.new("Opel", "car", "425GH") }
      let(:item2) { Car.new("Scoda", "car", "325GH") }

      it "returns all items" do
        expect(bc.all.first.to_s).to eq("The car: Opel - car - 425GH")
      end
    end

    context "two items" do
      before do
        bc.add(item1)
        bc.add(item2)
      end
      let(:item1) { Car.new("Opel", "car", "425GH") }
      let(:item2) { Car.new("Scoda", "car", "325GH") }

      it "returns items added in array with id increasing by one" do
        expect(bc.all).to eq([item1, item2])
      end
    end
  end

  describe "#add" do
    context "one item" do
      let(:item1) { Car.new("Scoda", "car", "325GH") }
      it "returns the array of items with one item" do
        expect(bc.add(item1)).to eq([item1])
      end
    end
    context "two items" do
      let(:item1) { Car.new("Scoda", "car", "325GH") }
      let(:item2) { Car.new("Toyota", "car", "125GH") }
      before do
        bc.add(item1)
      end

      it "returns the array of items" do
        expect(bc.add(item2)).to eq([item1, item2])
      end
    end
  end

  describe "find" do
    context " three items" do
      before do
        bc.add(item1)
        bc.add(item2)
        bc.add(item3)
      end
      let(:item1) { Car.new("Opel", "car", "425GH") }
      let(:item2) { Car.new("Scoda", "car", "325GH") }
      let(:item3) { Car.new("Toyota", "car", "125GH") }
      it "returns the item what you need" do
        expect(bc.find(2)).to eq([item2])
      end
    end
  end

  describe "remove" do
    context " three items" do
      before do
        bc.add(item1)
        bc.add(item2)
        bc.add(item3)
        bc.remove(2)
      end
      let(:item1) { Car.new("Scoda", "car", "325GH") }
      let(:item2) { Car.new("Toyota", "car", "125GH") }
      let(:item3) { Car.new("Seat", "car", "825GH") }
      it "delete one item what you need to remove" do
        expect(bc.all).to eq([item1, item3])
      end
    end
  end
end
