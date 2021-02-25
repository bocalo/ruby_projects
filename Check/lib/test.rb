require_relative "product"

class Checkout
  attr_reader :items

  def initialize
    @items = []
  end

  def add(code)
    product = @items.find do |item|
      item.code == code
    end

    if product.nil?
      new_product = Product.for(code)
      @items << new_product
      new_product.quantity = 1
    else
      @items
      product.quantity += 1
    end
  end

  def discount_pc
    account("PC")
    take_price("PC")
    res = take_price("PC") * account("PC")

    if account("PC") >= 3
      res -= res * 0.2
    else
      res = take_price("PC") * account("PC")
    end
  end

  def discount_cc
    account("CC")
    take_price("CC")

    res = take_price("CC") * account("CC")
    if account("CC") > 0 && account("CC") % 2 == 0
      res / 2
    elsif account("CC") % 2 != 0
      res = (res - 1.5) / 2 + 1.5
    end
  end

  def discount_wa
    account("WA")
    take_price("WA")
    res = account("WA") * take_price("WA")
  end

  def total
    total = discount_pc + discount_cc + discount_wa
    total.round(2)
  end

  private

  def account(code)
    product = @items.find { |item| item.code == code }
    if product == nil
      0
    else
      product.quantity
    end
  end

  def take_price(code)
    product = @items.find { |item| item.code == code }
    if product == nil
      0
    else
      product.price
    end
  end
end

ch = Checkout.new

# pp ch.add("PC")
# pp ch.add("PC")

ch.add("PC")
ch.add("CC")
ch.add("CC")
#ch.add("WA")

# ch.add("CC")
# ch.add("CC")
# ch.add("CC")
# ch.add("CC")
# ch.add("CC")
# ch.add("WA")
#pp ch.account("PC")
#pp ch.account("CC")
pp ch.account("WA")
#pp ch.take_price("CC")
#pp ch.take_price("WA")
#pp ch.send(:account, "PC")
# pp ch.add("WA")
#pp ch.discount_pc
# ch.discount_cc
#pp ch.discount_wa
pp ch.total
