class Driver
  attr_reader :full_name, :gender, :driving_since, :rating

  def initialize(full_name, gender, driving_since, rating)
    @full_name = full_name
    @gender = gender
    @driving_since = driving_since
    @rating = rating
  end

  def to_s
    "The driver: #{full_name} - #{gender} - #{driving_since} - #{rating}"
  end
end
