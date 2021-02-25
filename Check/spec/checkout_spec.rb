require "./lib/checkout"

describe Checkout do
  subject(:ch) { Checkout.new }

  describe "#add" do
    it "add an item to an array of items" do
      expect(ch.add("CC")).to eq(1)
    end
  end

  describe "#discount_cc" do
    context "five coca cola" do
      before do
        ch.add("CC")
        ch.add("CC")
        ch.add("CC")
        ch.add("CC")
        ch.add("CC")
      end
      it "returns discounted price" do
        expect(ch.discount_cc).to eq(4.50)
      end
    end
  end
  describe "#discount_pc" do
    context "four pepsi cola" do
      before do
        ch.add("PC")
        ch.add("PC")
        ch.add("PC")
        ch.add("PC")
        ch.add("PC")
      end
      it "returns discounted price" do
        expect(ch.discount_pc).to eq(8.0)
      end
    end
  end

  describe "#discount_wa" do
    context "one water" do
      before do
        ch.add("WA")
      end
      it "returns discounted price" do
        expect(ch.discount_wa).to eq(0.85)
      end
    end
  end

  describe "total" do
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
