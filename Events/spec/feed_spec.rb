require "./lib/feed"

describe Feed do
  subject(:feed) { Feed.new }

  describe "#add" do
    it "add event to the list of the events" do
      expect(feed.add(event1.to_s)).to eq(["Event: Programming - some fastive events about programming scince - Tambov - 10.02.2005 - 12.02.2005 - tambov@fastive.ru - google"])
    end
  end

  describe "#all" do
    it "returns all events added to the list" do
      expect(feed.all.first.to_s).to eq("Event: Programming - some fastive events about programming scince - Tambov - 10.02.2005 - 12.02.2005 - tambov@fastive.ru - google")
    end
  end
end
