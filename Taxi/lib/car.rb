require_relative "vehicle"

class Car < Vehicle
  def to_s
    "The car: #{model} - #{type} - #{number}"
  end

  def max_passengers
    3
  end
end
