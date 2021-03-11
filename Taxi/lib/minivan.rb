require_relative "vehicle"

class Minivan < Vehicle
  def to_s
    "The minivan: #{model} - #{type} - #{number}"
  end

  def max_passengers
    10
  end
end
