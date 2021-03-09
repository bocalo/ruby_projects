require './lib/car'
require './lib/driver'

driver = Driver.new("Bill Smith", "male", "2000", "5")

pp driver.to_s
pp driver.inspect