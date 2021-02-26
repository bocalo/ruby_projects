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
  end

  def upcoming(n)
    sort_by(:start_time).take(n)
  end

  # def sort_by(field)
  #   @events.sort_by { |el| el.send(field.to_s) }
  # rescue StandardError
  #   raise "There is no such date"
  # end

  def sort_by(field)
    @events.sort_by { |el| el == el.start_time.scan(/\d+/).last.to_i }.reverse
  rescue StandardError
    raise "There is no such date"
  end

  def find(hash)
  end

  def by_organizer(email)
    @events.find { |el| el.organizer_email == email }
  end

  def self.pending_events
    @status == "pending"
  end

  def self.approve
    @status == true
  end

  def self.reject
    @status == false
  end
end
