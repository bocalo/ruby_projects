require_relative "vehicle"

class Car < Vehicle
  Max_Passengers = 3

  def to_s
    "The car: #{model} - #{type} - #{number}"
  end
end
