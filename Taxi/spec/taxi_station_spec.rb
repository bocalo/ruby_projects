require "./lib/car"
require "./lib/driver"
require "./lib/order"
require "./lib/cars_collection"
require "./lib/drivers_collection"
require "./lib/orders_collection"
require "./lib/orders_collection"
require "./lib/current_taxis_collection"
require "./lib/taxi_station"

describe TaxiStation do
  before do
    #ts.add_car(car1)
    # ts.add_car(car2)
    # ts.add_car(car3)
  end
  let(:driver1) { Driver.new("Tom Snow", "male", "2004", "3") }
  let(:driver2) { Driver.new("Bill Smith", "male", "2000", "4") }
  let(:driver3) { Driver.new("Anna Cruz", "female", "2000", "5") }
  let(:car1) { Car.new("Scoda", "car", "325GH") }
  let(:car2) { Car.new("Toyota", "car", "125GH") }
  let(:car3) { Car.new("Seat", "car", "825GH") }
  let(:oc) { Order.new("08.10.20", 3, "Minsk", "Kiev", "car") }
  let(:oc1) { Order.new("18.05.20", 10, "Tambov", "Kursk", "minivan") }
  let(:oc2) { Order.new("11.12.20", 25, "Adler", "Sochi", "bus") }
  let(:current1) { CurrentTaxi.new(driver1, car1) }
  let(:current2) { CurrentTaxi.new(driver2, car2) }
  let(:current3) { CurrentTaxi.new(driver3, car3) }

  let(:ctc) { CurrentTaxisCollection.new }
  let(:cc) { CarsCollection.new }
  let(:dc) { DriversCollection.new }
  let(:oс) { OrdersCollection.new }
  let(:ts) { TaxiStation.new(oc, cc, dc, ctc) }

  describe "#add_car" do
    context "one car" do
      let(:car1) { Car.new("Scoda", "car", "325GH") }
      it "returns the array of cars with one car" do
        expect(ts.add_car(car1)).to eq([car1])
      end
    end

    context "two cars" do
      let(:car1) { Car.new("Scoda", "car", "325GH") }
      let(:car2) { Car.new("Toyota", "car", "125GH") }
      before do
        ts.add_car(car1)
      end

      it "returns the array of cars" do
        expect(ts.add_car(car2)).to eq([car1, car2])
      end
    end
  end

  describe "find_car" do
    context " three cars" do
      before do
        ts.add_car(car)
        ts.add_car(car1)
        ts.add_car(car2)
      end
      let(:car) { Car.new("Opel", "car", "425GH") }
      let(:car1) { Car.new("Scoda", "car", "325GH") }
      let(:car2) { Car.new("Toyota", "car", "125GH") }
      it "returns the car what you need" do
        expect(ts.find_car(2)).to eq([car1])
      end
    end
  end

  describe "#find_type" do
    context " three cars" do
      before do
        ts.add_car(car1)
        ts.add_car(car2)
        ts.add_car(car3)
      end
      let(:car1) { Car.new("Scoda", "car", "325GH") }
      let(:car2) { Car.new("Toyota", "car", "125GH") }
      let(:car3) { Car.new("Opel", "car", "425GH") }

      let(:driver1) { Driver.new("Tom Snow", "male", "2004", "3") }
      let(:driver2) { Driver.new("Bill Smith", "male", "2000", "4") }
      let(:driver3) { Driver.new("Anna Cruz", "female", "2000", "5") }
      let(:order1) { Order.new("08.10.20", 3, "Minsk", "Kiev", "car") }
      let(:order2) { Order.new("18.05.20", 10, "Tambov", "Kursk", "minivan") }
      let(:order3) { Order.new("11.12.20", 25, "Adler", "Sochi", "bus") }
      it "returns the driver with max rating" do
        expect(ts.find_type(order1).driver).to eq("Tom Snow")
      end
    end
  end
end
