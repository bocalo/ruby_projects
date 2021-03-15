require "./lib/orders_collection"

describe OrdersCollection do
  subject(:oc) { OrdersCollection.new }

  describe "#all" do
    context "two orders" do
      before do
        oc.add(order1)
        oc.add(order2)
      end

      let(:order1) { Order.new("08.10.20", 3, "Minsk", "Kiev", "car") }
      let(:order2) { Order.new("18.05.20", 10, "Tambov", "Kursk", "minivan") }

      it "returns all orders" do
        expect(oc.all.first.to_s).to eq("The order: 08.10.20 - 3 - Minsk Kiev car")
      end
    end

    context "two orders" do
      before do
        oc.add(order1)
        oc.add(order2)
      end
      let(:order1) { Order.new("08.10.20", 3, "Minsk", "Kiev", "car") }
      let(:order2) { Order.new("18.05.20", 10, "Tambov", "Kursk", "minivan") }

      it "returns orders added in array with id increasing by one" do
        expect(oc.all).to eq([order1, order2])
      end
    end
  end

  describe "#add" do
    context "one order" do
      let(:order1) { Order.new("08.10.20", 3, "Minsk", "Kiev", "car") }
      it "returns the array of cars with one car" do
        expect(oc.add(order1)).to eq([order1])
      end
    end
    context "two orders" do
      let(:order1) { Order.new("08.10.20", 3, "Minsk", "Kiev", "car") }
      let(:order2) { Order.new("18.05.20", 10, "Tambov", "Kursk", "minivan") }
      before do
        oc.add(order1)
      end

      it "returns the array of orders" do
        expect(oc.add(order2)).to eq([order1, order2])
      end
    end
  end

  describe "find" do
    context " three orders" do
      before do
        oc.add(order1)
        oc.add(order2)
        oc.add(order3)
      end
      let(:order1) { Order.new("08.10.20", 3, "Minsk", "Kiev", "car") }
      let(:order2) { Order.new("18.05.20", 10, "Tambov", "Kursk", "minivan") }
      let(:order3) { Order.new("11.12.20", 25, "Adler", "Sochi", "bus") }
      it "returns the order what you need" do
        expect(oc.find(2)).to eq([order2])
      end
    end
  end

  describe "remove" do
    context " three orders" do
      before do
        oc.add(order1)
        oc.add(order2)
        oc.add(order3)
        oc.remove(2)
      end
      let(:order1) { Order.new("08.10.20", 3, "Minsk", "Kiev", "car") }
      let(:order2) { Order.new("18.05.20", 10, "Tambov", "Kursk", "minivan") }
      let(:order3) { Order.new("11.12.20", 25, "Adler", "Sochi", "bus") }
      it "delete the order what you need to remove" do
        expect(oc.all).to eq([order1, order3])
      end
    end
  end
end
