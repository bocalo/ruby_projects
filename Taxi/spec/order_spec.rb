require "./lib/order"

describe Order do
  let(:minivan) { Minivan.new("Fiat", "minivan", "435BL")}
  let(:order) { Order.new("08.02.21", 10, "Minsk", "Kiev", minivan) }

  describe "#to_s" do
    it "returns string with order's dates" do
      expect(order.to_s).to eq("The order: 08.02.21 - 10 - Minsk Kiev The minivan: Fiat - minivan - 435BL")
    end
  end
end
