class Current
  attr_reader :driver, :car, :status
  attr_accessor :id

  def initialize(driver, car)
    @driver = driver
    @car = car
    @status = "idle"
    @id = 0
  end

  def to_s
    "On the current moment: #{driver} - #{car} - #{status}"
  end

  def idle
    @status = "idle"
  end

  def busy
    @status = "busy"
  end
end
