class Event
  POSSIBLE_TAGS = ["ruby", "rails", "docker", "devops"]

  attr_reader :title, :description, :location, :start_time, :end_time, :organizer_email, :link

  def initialize(title, description, location, start_time, end_time, organizer_email, link)
    @title = title
    @description = description
    @location = location
    @start_time = start_time
    @end_time = end_time
    @organizer_email = organizer_email
    @link = link
    @tags = []
    @status = "pending"
  end

  def to_s
    "Event: #{@title} - #{@description} - #{@location} - #{@start_time} - #{@end_time} - #{@organizer_email} - #{@link}"
  end

  def self.title_empty?
    begin
      @title.nil? || @title.empty?
    rescue
      puts "Error"
    end
  end

  def self.description_empty?
    begin
      @description.nil? || @description.empty?
    rescue
      puts "Error"
    end
  end

  def self.location_empty?
    begin
      @location.nil? || @location.empty?
    rescue
      puts "Error"
    end
  end

  def self.start_time_empty?
    begin
      @start_time.nil? || @start_time.empty?
    rescue
      puts "Error"
    end
  end

  def self.organizer_email_empty?
    begin
      @organizer_email.nil? || @organizer_email.empty?
    rescue
      puts "Error"
    end
  end
end
