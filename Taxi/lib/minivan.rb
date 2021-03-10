require_relative 'vehicle'

class Minivan < Vehicle
  Max_Passengers = 10
  def to_s
    "The minivan: #{model} - #{type} - #{number}"
  end
end

