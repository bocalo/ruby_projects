require_relative "vehicle"

class Truck < Car
  Max_Cargo = 20000

  def to_s
    "The truck: #{model} - #{type} - #{number}"
  end
end
