class Product
  attr_reader :code, :price
  attr_accessor :quantity

  def initialize(code, price)
    @code = code
    @price = price
    @quantity = 0
  end

  def self.for(code)
    if code == "CC"
      Product.new("CC", 1.5)
    elsif code == "PC"
      Product.new("PC", 2.0)
    elsif code == "WA"
      Product.new("WA", 0.85)
    end
  end
end
