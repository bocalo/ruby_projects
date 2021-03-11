require_relative "vehicle"

class Truck < Car
  def to_s
    "The truck: #{model} - #{type} - #{number}"
  end
end
