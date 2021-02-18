require_relative 'product'

class Checkout
  attr_reader :items

  def initialize
     @items = []
  end

  def add(code)
    puts @items << Product.for(code)
  end

  # def total
  #   discount_pc(items) + discount_cc(items) + discount_wa(items)
  # end

  # def discount_pc(items)
  #   price_pc = 2.0
    #count = items.group_by { |item| item == "PC" }.values.map { |el| el.length }.first
    #pp count = items.group_by { |item| item == "PC" }.count
    
  #   if count >= 3
  #     price_pc *= count
  #     price_pc -= price_pc * 0.2
  #   else
  #     price_pc *= count
  #   end
  # end

  # def discount_cc(items)
  #   price_cc = 1.5
    #count = items.group_by { |item| item == "CC" }.values.map { |el| el.length }.last
    #count = items.group_by { |item| item == "CC" }.count
  #   price_cc = price_cc * count
  #   if count > 0 && count % 2 == 0
  #     price_cc /= 2
  #   elsif count % 2 != 0
  #     price_cc = (price_cc - 1.5) / 2 + 1.5
  #   end
  # end

  # def discount_wa(items)
  #   price_wa = 0.85
    #count = items.group_by { |item| item == "WA" }.count
#     price_wa *= count
#   end
# end
end
ch = Checkout.new
# ch.add('PC')
# ch.add('PC')
ch.add('CC')
ch.add('CC')
# ch.add('WA')
#ch.add('WA')
#pp ch.discount_pc(["PC", "CC", "PC", "WA"])
#pp ch.discount_cc(["PC", "CC", "PC", "WA"])
#pp ch.discount_wa(["PC", "CC", "PC"])
#pp ch.total

