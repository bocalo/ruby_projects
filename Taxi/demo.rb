require "./lib/vehicle"
require "./lib/driver"
require "./lib/bus"
require "./lib/car"
require "./lib/minivan"
require "./lib/truck"
require "./lib/current"

driver = Driver.new("Bill Smith", "male", "2000", "5")
vehicle = Vehicle.new("Scoda", "car", "325GH")
current = Current.new("Pall Dell", "Fiat")
pp current.to_s

#pp vehicle.type
car = Car.new("Mazda", "car", "125GH")
minivan = Minivan.new("Fiat", "minivan", "435BL")
bus = Bus.new("Neoplan", "bus", "345FD")
truck = Truck.new("Volvo", "truck", "987FD")
#pp truck.to_s
#pp minivan.to_s
#pp vehicle.to_s
#pp Car.for("Honda", "car", "225GH")
#pp Car.for("Scoda", "car", "325GH")

#pp bus.to_s
#pp bus
#pp bus.can_take_passengers?(100)
#pp car.to_s
#pp vehicle.can_take_passengers?(10)

#pp driver.to_s
