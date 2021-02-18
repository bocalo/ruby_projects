require "./lib/checkout"

describe Checkout do
  subject(:ch) { Checkout.new }

  describe "#add" do
    it "add an item to an array of items" do
      expect(ch.add("CC")).to eq(["CC"])
    end
  end

  describe "#total" do
    context "five coca cola" do
      before do
        ch.add("CC")
        ch.add("CC")
        ch.add("CC")
        ch.add("CC")
        ch.add("CC")
      end
      it "returns discounted price" do
        expect(ch.total).to eq(4.50)
      end
    end
    
    context "four pepsi cola" do
      before do
        ch.add("PC")
        ch.add("PC")
        ch.add("PC")
        ch.add("PC")
        ch.add("PC")
      end
      it "returns discounted price" do
        expect(ch.total).to eq(8.0)
      end
    end

    context "one water" do
      before do
        ch.add("WA")
      end
      it "returns discounted price" do
        expect(ch.total).to eq(0.85)
      end
    end

    context "two coca cola, one water and two pepsi cola" do
      before do
        ch.add("CC")
        ch.add("PC")
        ch.add("WA")
        ch.add("PC")
        ch.add("CC")
      end
      it "returns discounted price" do
        expect(ch.total).to eq(6.35)
      end
    end
  end
end
