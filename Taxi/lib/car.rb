class Car
  attr_reader :model, :type, :number
  
  def initialize(model, type, number)
    @model = model
    @type = type
    @number = number
  end

  def can_take_passengers?(number)
    @number <= number
  end
end