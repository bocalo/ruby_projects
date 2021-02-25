require "./lib/product"

describe "Product" do
  subject { Product.for("PC") }
  describe "::for" do
    it "returns product with the same price as the calling one" do
      expect(subject.price).to eq(2.00)
    end
    it "returns product with the same code as the calling one" do
      expect(subject.code).to eq("PC")
    end
    it "returns product with the same quantity as the calling one" do
      expect(subject.quantity).to eq(0)
    end
  end
end
