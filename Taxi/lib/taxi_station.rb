# require_relative "cars_collection"
# require_relative "driver_collection"
# require_relative "order_collection"
require_relative "base_collection"
require_relative "current_taxis_collection"

class TaxiStation
  attr_reader :orders_collection, :cars_collection, :drivers_collection, :current_taxis_collection

  def initialize(orders_collection, cars_collection, drivers_collection, current_taxis_collection)
    @orders_collection = orders_collection
    @cars_collection = cars_collection
    @drivers_collection = drivers_collection
    @current_taxis_collection = current_taxis_collection
  end

  def add_car(car)
    if @cars_collection.all.length == 0
      car.id = 1
    else
      last = @cars_collection.all.last.id + 1
      car.id += last
    end
    pp @cars_collection.all << car
  end

  def find_car(id)
    @cars_collection.all.select { |el| el.id == id }
  end

  # def find_type(order)
  #   taxi = @current_taxis_collection.all.find { |el| el.car.can_take_passengers?(order.passengers_count) }
  #   order.assigned_taxi = taxi
  #   @orders_collection.add(order)
  # end

  def find_type(order)
    taxi = @current_taxis_collection.all.sort_by { |el| el.driver.rating }.find { |el| el.car.can_take_passengers?(order.passengers_count) }
    if taxi
      order.assigned_taxi = taxi
      @orders_collection.add(order)
    else
      raise "There is not such taxi in our station!"
    end
  end

  def idle
    @status = "idle"
  end

  def busy
    @status = "busy"
  end

  def approve
  end

  def reject
  end
end
