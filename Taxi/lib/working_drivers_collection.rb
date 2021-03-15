require_relative 'order'
require_relative 'driver'
require_relative 'drivers_collection'

class WorkingDriversCollection
  attr_reader :drivers

  def initialize
    @drivers = []
  end

  def add(driver)
    @drivers << driver
  end

  def all
    @drivers
  end

  def find(driver)
    
    
  end

  def remove(driver)
  end
end
