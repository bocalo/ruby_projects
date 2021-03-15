require_relative "order"
require_relative "driver"

class DriversCollection
  attr_reader :drivers

  def initialize
    @drivers = []
  end

  def all
    @drivers
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
