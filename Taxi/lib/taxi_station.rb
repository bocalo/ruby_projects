require_relative "car"
require_relative "driver"

class TaxiStation
  attr_reader :driver, :car, :status

  def initialize(driver, car, status)
    @driver = driver
    @car = car
    @status = idle
  end
end
