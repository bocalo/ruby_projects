require_relative "event"

class Feed
  attr_reader :events

  def initialize
    @events = []
  end

  def add(event)
    begin
      @events << event
    rescue event.nil?
      puts "The event can't be nil"
    rescue event.empty?
      puts "The event can't be empty"
    end
  end

  def all
    @events
    find_approved
  end

  # def event1
  #   @events.first
  # end

  def upcoming(n)
    find_approved
    sort_by(:start_time).take(n)
  end

  def sort_by(field)
    @events.sort_by { |el| el == el.start_time.scan(/\d+/).last.to_i }.reverse
  rescue StandardError
    raise "There is no such date"
  end

  def find(field)
    field_name = field.keys.first
    field_value = field.values.first
    @events.find do |event|
      field_value.any? { |el| event.tags.include?(el) }
    end
  end

  def by_organizer(email)
    find_approved
    @events.find { |el| el.organizer_email == email }
  end

  def pending_events
    @events.find_all { |event| event.status == "pending" }
  end

  def find_approved
    @events.find_all { |event| event.status == "approved" }
  end
end
