class Event
  POSSIBLE_TAGS = ["ruby", "rails", "docker", "devops"]

  attr_reader :title, :description, :location, :start_time, :end_time, :organizer_email, :link, :tags, :status

  def initialize(title, description, location, start_time, end_time, organizer_email, link, tags = [])
    @title = title
    @description = description
    @location = location
    @start_time = start_time
    @end_time = end_time
    @organizer_email = organizer_email
    @link = link
    @tags = tags
    @status = "pending"
    validate!
    find_keywords
  end

  def to_s
    "Event: #{@title} - #{@description} - #{@location} - #{@start_time} - #{@end_time} - #{@organizer_email} - #{@link}"
  end

  def validate!
    [@title, @description, @location, @start_time, @end_time, @organizer_email, @link].each { |el| raise "Error" if el.nil? || el == " " }
  end

  def approve
    @status = "approved"
  end

  def reject
    @status = "reject"
  end

  private

  def find_keywords
    POSSIBLE_TAGS.each do |el|
      if self.description.include?(el)
        self.tags << el
      end
    end
  end
end
