class Checkout
  CC = "Coca Cola"
  PC = "Pepsi Cola"
  WA = "Water"

  attr_reader :items

  def initialize
    @items = []
    @count = Hash.new(0)
  end

  def add(item)
    @items << item
  end

  def total
    count_drinks(items)
    price_cc = @count["CC"] * 1.5
    price_pc = @count["PC"] * 2.00
    price_wa = @count["WA"] * 0.85

    if @count["PC"] >= 3
      price_pc -= price_pc * 0.2
      #pp price_pc
    elsif @count["CC"] > 0 && @count["CC"] % 2 == 0
      price_cc /= 2
    elsif @count["CC"] % 2 != 0
      price_cc = (price_cc - 1.5) / 2 + 1.5
    elsif @count["WA"]
      price_wa
    end
    price_cc + price_pc + price_wa
  end

  def count_drinks(items)
    items.each { |item| @count[item] += 1 }
    @count
  end
end

ch = Checkout.new
#pp ch.add("CC")
# pp ch.count_drinks(["PC", "PC", "PC", "PC", "PC"])
# pp ch.total
# pp ch.count_drinks(["WA"])
# pp ch.total
# pp ch.count_drinks(["CC", "PC", "CC", "CC"])
# pp ch.total
# pp ch.count_drinks(["CC", "PC", "WA"])
# pp ch.total
# pp ch.count_drinks(["PC", "CC", "PC", "PC", "CC", "PC"])
# pp ch.total.round(2)
pp ch.count_drinks(["PC", "CC", "PC", "WA"])
pp ch.total.round(2)
