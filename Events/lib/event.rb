class Event
  POSSIBLE_TAGS = ["ruby", "rails", "docker", "devops"]

  attr_reader :title, :description, :location, :start_time, :end_time, :organizer_email, :link, :tags

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
  end

  def to_s
    "Event: #{@title} - #{@description} - #{@location} - #{@start_time} - #{@end_time} - #{@organizer_email} - #{@link}"
  end

  def validate!
    [@title, @description, @location, @start_time, @end_time, @organizer_email, @link].each { |el| raise "Error" if el.nil? || el == " " }
  end

  private

  def find_keywords
    POSSIBLE_TAGS.each do |tag|
      raise "Error" if tag.nil?
      event1.send(tag) if event1.description.include?(tag)
    end
  end
end
