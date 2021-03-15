#require_relative "driver"
require_relative "current"
require_relative "drivers_collection"

class WorkingDriversCollection
  attr_reader :drivers

  def initialize(driver, car)
    @drivers = []
  end

  def add(driver)
    if @drivers.length == 0
      driver.id = 1
    else
      last = @drivers.last.id + 1
      driver.id += last
    end
    @drivers << driver
  end

  def find(driver)
    @drivers.select { |el| el.id == driver.id }
  end

  def remove(driver)
    @drivers.delete_if { |el| el.id == driver.id }
  end
end
