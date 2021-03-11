require_relative "vehicle"

class Bus < Vehicle
  def to_s
    "The bus: #{model} - #{type} - #{number}"
  end

  def max_passengers
    30
  end
end
