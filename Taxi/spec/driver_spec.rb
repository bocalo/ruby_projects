require "./lib/driver"

describe Driver do
  let(:driver) { Driver.new("Bill Smith", "male", "2000", "5") }

  describe "#to_s" do
    it "returns string with driver's dates" do
      expect(driver.to_s).to eq("The driver: Bill Smith - male - 2000 - 5")
    end
  end
end
