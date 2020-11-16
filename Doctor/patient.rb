# TODO: remove later

require_relative "doctor"

class Patient
  attr_reader :name

  def initialize(name)
    @name = name
  end
end
