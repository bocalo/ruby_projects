require_relative 'main'


class Patient
  attr_reader :name

  def initialize(name)
    @name = name
  end
end