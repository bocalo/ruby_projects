require_relative "vehicle"

class Bus < Vehicle
  Max_Passengers = 30

  def to_s
    "The bus: #{model} - #{type} - #{number}"
  end
end
