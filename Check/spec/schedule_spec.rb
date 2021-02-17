require "./lib/schedule"

describe DailySchedule do
  subject(:daily) { DailySchedule.new(working_hours, busy_hours) }
  let(:working_hours) { (9..18).to_a }
  let(:busy_hours) { [14, 15, 18] }
  describe "#available?" do
    it "should return false if all hours are included in working hours" do
      expect(daily.available?([15])).to be(false)
    end
    it "should return true if all hours are included in working hours" do
      expect(daily.available?([10])).to be(true)
    end
    it "should return false if all hours are included in working hours" do
      expect(daily.available?([7])).to be(false)
    end
    it "should return true if all hours are included in working hours" do
      expect(daily.available?([10])).to be(true)
    end
  end
end

