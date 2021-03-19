# require "./lib/cars_collection"

# describe CarsCollection do
#   subject(:cc) { CarsCollection.new }

#   describe "#all" do
#     context "two cars" do
#       before do
#         cc.add(car)
#         cc.add(car1)
#       end
#       let(:car) { Car.new("Opel", "car", "425GH") }
#       let(:car1) { Car.new("Scoda", "car", "325GH") }

#       it "returns all cars" do
#         expect(cc.all.first.to_s).to eq("The car: Opel - car - 425GH")
#       end
#     end

#     context "two cars" do
#       before do
#         cc.add(car)
#         cc.add(car1)
#       end
#       let(:car) { Car.new("Opel", "car", "425GH") }
#       let(:car1) { Car.new("Scoda", "car", "325GH") }

#       it "returns cars added in array with id increasing by one" do
#         expect(cc.all).to eq([car, car1])
#       end
#     end
#   end

#   describe "#add" do
#     context "one car" do
#       let(:car1) { Car.new("Scoda", "car", "325GH") }
#       it "returns the array of cars with one car" do
#         expect(cc.add(car1)).to eq([car1])
#       end
#     end
#     context "two cars" do
#       let(:car1) { Car.new("Scoda", "car", "325GH") }
#       let(:car2) { Car.new("Toyota", "car", "125GH") }
#       before do
#         cc.add(car1)
#       end

#       it "returns the array of cars" do
#         expect(cc.add(car2)).to eq([car1, car2])
#       end
#     end
#   end

#   describe "find" do
#     context " three cars" do
#       before do
#         cc.add(car)
#         cc.add(car1)
#         cc.add(car2)
#       end
#       let(:car) { Car.new("Opel", "car", "425GH") }
#       let(:car1) { Car.new("Scoda", "car", "325GH") }
#       let(:car2) { Car.new("Toyota", "car", "125GH") }
#       it "returns the car what you need" do
#         expect(cc.find(2)).to eq([car1])
#       end
#     end
#   end

#   describe "remove" do
#     context " three cars" do
#       before do
#         cc.add(car1)
#         cc.add(car2)
#         cc.add(car3)
#         cc.remove(2)
#       end
#       let(:car1) { Car.new("Scoda", "car", "325GH") }
#       let(:car2) { Car.new("Toyota", "car", "125GH") }
#       let(:car3) { Car.new("Seat", "car", "825GH") }
#       it "delete one car what you need to remove" do
#         expect(cc.all).to eq([car1, car3])
#       end
#     end
#   end
# end
