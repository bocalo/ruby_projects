class Vehicle
  attr_reader :model, :type, :number

  def initialize(model, type, number)
    @model = model
    @type = type
    @number = number
  end

  def to_s
    "The car: #{model} - #{type} - #{number}"
  end

  def can_take_passengers?(number)
    number <= max_passengers
  end

  def max_passengers
    3
  end

  def self.for(model, type, number)
    if type == "car"
      Car.new(model, "car", number)
    elsif type == "minivan"
      Minivan.new(model, "minivan", number)
    elsif type == "bus"
      Bus.new(model, "bus", number)
    elsif type == "truck"
      Truck.new(model, "truck", number)
    end
  end
end
