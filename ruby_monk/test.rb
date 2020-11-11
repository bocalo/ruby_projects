# Вы проводите рекламную акцию для своей электронной коммерции. Акция стала очень успешной, и у вас заканчивается инвентарь для многих предметов. Для обработки заказов вам необходимо удалить товары, которых нет в наличии, из заказа клиента. Кроме того, вы обещали своим клиентам отправлять бесплатные подарки с каждым заказом, не забывайте об этом!

class Order
  GIFT_ITEMS = [Item.new(:big_white_tshirt), Item.new(:awesome_stickers)]
  OUT_OF_STOCK_ITEMS = [Item.new(:ssd_harddisk)]

  def initialize(order)
    @order = order || []
  end

  def final_order
    # fix this method to get the tests to pass.

    # Я не пойму что откуда отнимать и куда прибавлять

    @order
  end
end

customer_order = Order.new([Item.new(:fancy_bag), Item.new(:ssd_harddisk)])

p customer_order.final_order

# All you need are the + and - operators. One to remove all out of stock items, and another to add the gift items.
###################################################



# Напомним: вы можете сделать объект коллекцией, определив eachметод и добавив Enumerable модуль в класс. Все Enumerable методы полагаются на то, each что должно быть реализовано классом хоста.



class FibonacciNumbers	NUMBERS = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
  
  # all your code goes here
#   include Enumerable
#   def each
#     NUMBERS.each { |num| puts num } # это мой код неверный, а как правильно?
#   end
# end

f = FibonacciNumbers.new
if f.respond_to?(:map)
  squares = f.map {|number| number * number }
	puts "The squares of the fibonacci numbers are #{squares}"
else
  puts "I'll reveal the squares to you once you pass the tests."
end

####################################################################

def describe(user_info)
  "My name is #{user_info[0]} and I'm #{user_info[1]} years old."
end
p describe([" Greg Lief", 42])

# expected "My name is Greg Lief and I'm 42 years old." got "My name is and I'm years old." (compared using ==)

# А где здесь ошибка?


