require "./lib/event"

describe Event do
  subject(:event1) {
    Event.new("Programming", "some ruby fastive events about programming scince", "Tambov", "10.02.2005", "12.02.2005", "tambov@fastive.ru", "google")
    context "the event with only one tag named description" do
      it "returns the event with all tags as keywords from possible_tags array finding in event description" do
        expect(event1.tags).to eq(["ruby", "rails", "docker", "devops"])
      end
    end
  }
  # context "the event with only one tag named description" do
  #   it "returns the event with all tags as keywords from possible_tags array finding in event description" do
  #     expect(event1.tags).to eq(["ruby", "rails", "docker", "devops"])
  #   end
  # end

  describe "#validate!" do
    subject(:event1) { Event.new("Programming", "some ruby fastive events about programming scince", nil, "10.02.2005", "12.02.2005", "tambov@fastive.ru", "google") }

    it "raises" do
      expect { event1 }.to raise_error("Error")
    end
  end
end

#Event.new(@title, @description, @location, @start_time, @end_time, @organizer_email, @link, tags = [])

# describe "#find_keywords" do
#   context "the event with only one tag named description" do
#     it "returns the event with all tags as keywords from possible_tags array finding in event description" do
#       expect(event1.tags).to eq(["ruby", "rails", "docker", "devops"])
#     end
#   end
# end
