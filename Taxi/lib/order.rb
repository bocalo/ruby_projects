class Order
  attr_reader :created_at, :passengers_count, :has_children, :has_cargo, :address_from, :address_to, :assigned_taxi

  def initialize(created_at, passengers_count, address_from, address_to, assigned_taxi)
    @created_at = created_at
    @passengers_count = passengers_count
    @has_children = true
    @has_cargo = true
    @address_from = address_from
    @address_to = address_to
    @assigned_taxi = assigned_taxi
  end

  def to_s
    "The order: #{created_at} - #{passengers_count} - #{address_from} #{address_to} #{assigned_taxi}"
  end
end
