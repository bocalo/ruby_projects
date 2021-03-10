class Vehicle
  Max_Passengers = 3
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
    Max_Passengers >= number
  end

  def self.for(model, type, number)
    if type == "car"
      Car.new("Mazda", "car", "225GH")
    elsif type == "minivan"
      Minivan.new("Ford", "minivan", "589Lk")
    elsif type == "bus"
      Bus.new("Neoplan", "bus", "345FD")
    elsif type == "truck"
      Truck.new("Volvo", "truck", "854JF")
    end
  end
end
