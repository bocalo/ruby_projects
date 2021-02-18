# class Checkout
#   attr_reader :items

#   def initialize
#     @items = []
    
#   end

#   def add(item)
#     @items << item
#   end

#   def total
#     count_drinks(items)
#     price_cc = @count["CC"] * 1.5
#     price_pc = @count["PC"] * 2.00
#     price_wa = @count["WA"] * 0.85

#     if @count["PC"] >= 3
#       price_pc -= price_pc * 0.2
#     elsif @count["CC"] > 0 && @count["CC"] % 2 == 0
#       price_cc /= 2
#     elsif @count["CC"] % 2 != 0
#       price_cc = (price_cc - 1.5) / 2 + 1.5
#     elsif @count["WA"]
#       price_wa
#     end
#     price_cc + price_pc + price_wa
#   end

#   def discount_pc(items)
#     count = items.group_by { |item| item == "PC" }.values.map { |el| el.length }.last
#     # if count >= 3
#     #   pp @price = @price * count
#     #   @price -= @price * 0.2
#     # end
#   end

#   #private

#   def count_drinks(items)
#     items.each { |item| @count[item] += 1 }
#   end
# end

# # ch = Checkout.new

# # pp ch.count_drinks(["PC", "CC", "PC", "WA"])
# # pp ch.total.round(2)
