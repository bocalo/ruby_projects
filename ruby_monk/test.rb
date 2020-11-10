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
