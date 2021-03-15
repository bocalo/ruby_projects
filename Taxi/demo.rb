require "./lib/vehicle"
require "./lib/driver"
require "./lib/bus"
require "./lib/car"
require "./lib/minivan"
require "./lib/truck"
require "./lib/order"
require "./lib/cars_collection"
require "./lib/drivers_collection"
require "./lib/orders_collection"
require "./lib/current_taxi"
require "./lib/current_taxis_collection"

driver = Driver.new("Tom Snow", "male", "2004", "5")
driver1 = Driver.new("Bill Smith", "male", "2000", "5")
driver2 = Driver.new("Anna Cruz", "female", "2000", "4")
driver3 = Driver.new("Tim Barks", "male", "2010", "5")
car1 = Car.new("Scoda", "car", "325GH")
car2 = Car.new("Toyota", "car", "125GH")
car3 = Car.new("Seat", "car", "825GH")

current1 = CurrentTaxi.new(driver1, car1)
current2 = CurrentTaxi.new(driver2, car2)
current3 = CurrentTaxi.new(driver3, car3)

ctс = CurrentTaxisCollection.new

ctс.add(current1)
ctс.add(current2)
ctс.add(current3)
pp ctc.all
#pp ctc.find(2)
#pp ctc.all.first.to_s
# ctс.add(current2)
#pp ctc.all.first.to_s
# ctс.find(1)
# ctс.remove(1)

order1 = Order.new("08.10.20", 3, "Minsk", "Kiev", "car")
order2 = Order.new("18.05.20", 10, "Tambov", "Kursk", "minivan")
order3 = Order.new("11.12.20", 25, "Adler", "Sochi", "bus")

oc = OrdersCollection.new
oc.add(order1)
oc.add(order2)
oc.add(order3)
#pp oc.all.first.to_s
oc.find(order2)
oc.remove(order2)

#driver = Driver.new("Tim Barks", "male", "2010", "5")
# driver1 = Driver.new("Bill Smith", "male", "2000", "5")
# driver2 = Driver.new("Anna Cruz", "female", "2000", "4")

dc = DriversCollection.new
# dc.add(driver)
dc.add(driver1)
#pp dc.all.first.to_s
# dc.add(driver2)
#pp dc.find(driver1)
#pp dc.remove(driver1)

car = Car.new("Opel", "car", "425GH")
car1 = Car.new("Scoda", "car", "325GH")
car2 = Car.new("Toyota", "car", "125GH")
car3 = Car.new("Seat", "car", "825GH")
minivan = Minivan.new("Fiat", "minivan", "435BL")
bus = Bus.new("Neoplan", "bus", "345FD")
truck = Truck.new("Volvo", "truck", "987FD")
cc = CarsCollection.new
cc.add(car)
cc.add(car1)
cc.add(car2)
# cc.add(car3)
# pp cc.all.first.to_s
# cc.find(car3)
#pp cc.remove(car3)
#pp cc.all
#pp cc.find(2)
# car = Car.new(model, type, number)
# pp car
vehicle = Vehicle.new("Scoda", "car", "325GH")
# current = CurrentTaxi.new(driver, car)
# pp current.to_s
# current1 = CurrentTaxi.new(driver1, car1)
# current2 = CurrentTaxi.new(driver2, car2)

#order = Order.new("08.02.21", 10, "Minsk", "Kiev", minivan)
#pp order.to_s

# pp current1.idle
# pp current2.busy
# pp current2.status
#pp current.to_s
#pp current1.status

#pp vehicle.type
car = Car.new("Scoda", "car", "325GH")
#pp car

#pp truck.to_s
#pp minivan.to_s
#pp vehicle.to_s
#pp Vehicle.for("Honda", "car", "225GH")
#pp Car.for("Scoda", "car", "325GH")

#pp bus.to_s
#pp bus
#pp bus.can_take_passengers?(23)
#pp minivan.can_take_passengers?(5)
#pp car.to_s
#pp vehicle.can_take_passengers?(3)
#pp bus.can_take_passengers?(130)
#pp vehicle.can_take_passengers?(3)

#pp bus.max_passengers(130)
#pp minivan.max_passengers(10)

#pp driver.to_s
