require "./lib/current"

describe Current do
  let(:current) { Current.new("Pall Dell", "Fiat") }

  describe "#to_s" do
    it "returns string with driver and car at the moment" do
      expect(current.to_s).to eq("On the current moment: Pall Dell - Fiat - idle")
    end
  end

  describe "#idle" do
    let(:current1) { Current.new("Tom Snow", "Shevrolet") }

    it "returns driver with status idle" do
      expect(current1.idle).to eq("idle")
    end
  end

  describe "#busy" do
    let(:current2) { Current.new("Anna Cruz", "Opel") }

    it "returns driver with status busy" do
      expect(current2.busy).to eq("busy")
    end
  end
end
