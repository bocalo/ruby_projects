require "./lib/feed"

describe Feed do
  subject(:feed) { Feed.new }

  describe "#add" do
    let(:event1) { Event.new("Programming", "some fastive events about programming scince", "Tambov", "10.02.2005", "12.02.2005", "tambov@fastive.ru", "google") }

    it "add event to the list of the events" do
      expect(feed.add(event1.to_s)).to eq(["Event: Programming - some fastive events about programming scince - Tambov - 10.02.2005 - 12.02.2005 - tambov@fastive.ru - google"])
    end
  end

  describe "#all" do
    context "two events" do
      before do
        feed.add(event1)
        feed.add(event2)
      end

      let(:event1) { Event.new("Programming", "some fastive events about programming scince", "Tambov", "10.02.2005", "12.02.2005", "tambov@fastive.ru", "google") }

      let(:event2) { Event.new("Ruby's Day", "meeting of the programmers in ruby ", "London", "19.05.2010", "21.05.2010", "ruby@london.com", "facebook") }
      before do
        event1.approve
        event2.approve
      end

      it "returns all events added to the list with helper method approve" do
        expect(feed.all).to eq([event1, event2])
      end
    end
  end

  describe "#upcoming" do
    context "five events" do
      before do
        feed.add(event1)
        feed.add(event2)
        feed.add(event3)
      end
      let(:event1) { Event.new("Programming", "some fastive events about programming scince", "Tambov", "10.02.2005", "12.02.2005", "tambov@fastive.ru", "google") }

      let(:event2) { Event.new("Ruby's Day", "meeting of the programmers in ruby ", "London", "19.05.2010", "21.05.2010", "ruby@london.com", "facebook") }

      let(:event3) {
        Event.new("Day of Rails", "meeting people who loves rails",
                  "Riga", "10.08.2015", "15.08.2015", "rails@riga.com", "twitter")
      }
      before do
        event1.approve
        event2.approve
        event3.approve
      end

      it "returns all events sorted by start of events with status approved" do
        expect(feed.upcoming(5)).to eq([event3, event2, event1])
      end
    end
  end

  describe "#by_organizer" do
    context "three events" do
      before do
        feed.add(event1)
        feed.add(event2)
        feed.add(event3)
      end
      let(:event1) { Event.new("Programming", "some fastive events about programming scince", "Tambov", "10.02.2005", "12.02.2005", "tambov@fastive.ru", "google") }

      let(:event2) { Event.new("Ruby's Day", "meeting of the programmers in ruby ", "London", "19.05.2010", "21.05.2010", "ruby@london.com", "facebook") }

      let(:event3) {
        Event.new("Day of Rails", "meeting people who loves rails",
                  "Riga", "10.08.2015", "15.08.2015", "rails@riga.com", "twitter")
      }
      before do
        event1.approve
        event2.approve
        event3.approve
      end

      it "returns the event only with called email and status approved" do
        expect(feed.by_organizer("ruby@london.com")).to eq(event2)
      end
    end
  end

  describe "#find" do
    context "three events" do
      before do
        feed.add(event1)
        feed.add(event2)
        feed.add(event3)
      end
      let(:event1) { Event.new("Programming", "some fastive events about programming scince", "Tambov", "10.02.2005", "12.02.2005", "tambov@fastive.ru", "google", ["programming", "science", "tambov"]) }

      let(:event2) { Event.new("Ruby's Day", "meeting of the programmers in ruby ", "London", "19.05.2010", "21.05.2010", "ruby@london.com", "facebook", ["programmers", "ruby", "meeting"]) }

      let(:event3) {
        Event.new("Day of Rails", "meeting people who loves rails",
                  "Riga", "10.08.2015", "15.08.2015", "rails@riga.com", "twitter", ["rails", "riga", "twitter"])
      }
      it "returns the event only with called tag" do
        expect(feed.find(tags: ["rails"])).to eq(event3)
      end
    end
  end

  describe "#pending_events" do
    context "three events" do
      before do
        feed.add(event1)
        feed.add(event2)
        feed.add(event3)
      end
      let(:event1) { Event.new("Programming", "some fastive events about programming scince", "Tambov", "10.02.2005", "12.02.2005", "tambov@fastive.ru", "google", ["programming", "science", "tambov"]) }

      let(:event2) { Event.new("Ruby's Day", "meeting of the programmers in ruby ", "London", "19.05.2010", "21.05.2010", "ruby@london.com", "facebook", ["programmers", "ruby", "meeting"]) }

      let(:event3) {
        Event.new("Day of Rails", "meeting people who loves rails",
                  "Riga", "10.08.2015", "15.08.2015", "rails@riga.com", "twitter", ["rails", "riga", "twitter"])
      }
      it "returns array if all events have status pending" do
        expect(feed.pending_events).to eq([event1, event2, event3])
      end
    end
  end
end
