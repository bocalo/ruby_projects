require "./lib/event"

describe Event do
  subject(:event1) {
    Event.new('Event:0x000055abf3f27340
 @description="some fastive events about programming scince",
 @end_time="12.02.2005",
 @link="google",
 @location="Tambov",
 @organizer_email="tambov@fastive.ru",
 @start_time="10.02.2005",
 @status="pending",
 @tags=[],
 @title="Programming"')
  }

  describe "::title_empty?" do
    it "it returns true if Event has the title" do
      expect(Event.title_empty?).to eq(true)
    end
  end

  describe "::description_empty?" do
    it "it returns true if Event has the desciption" do
      expect(Event.description_empty?).to eq(true)
    end
  end

  describe "::location_empty?" do
    it "it returns true if Event has the location" do
      expect(Event.location_empty?).to eq(true)
    end
  end

  describe "::start_time_empty?" do
    it "it returns true if Event has the start of time" do
      expect(Event.start_time_empty?).to eq(true)
    end
  end

  describe "::organizer_email_empty?" do
    it "it returns true if Event has the organizer of email" do
      expect(Event.organizer_email_empty?).to eq(true)
    end
  end
end
