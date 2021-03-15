require_relative "order"
require_relative "car"

class CarsCollection
  attr_reader :cars

  def initialize
    @cars = []
  end

  def all
    @cars
  end

  def add(car)
    if @cars.length == 0
      car.id = 1
    else
      last = @cars.last.id + 1
      car.id += last
    end
    @cars << car
  end

  def find(car)
    @cars.select { |el| el.id == car.id }
  end

  def remove(car)
    @cars.delete_if { |el| el.id == car.id }
  end
end
