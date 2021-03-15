require_relative "order"

class OrdersCollection
  attr_reader :orders

  def initialize
    @orders = []
  end

  def all
    @orders
  end

  def add(order)
    if @orders.length == 0
      order.id = 1
    else
      last = @orders.last.id + 1
      order.id += last
    end
    @orders << order
  end

  def find(id)
    @orders.select { |el| el.id == id }
  end

  def remove(id)
    @orders.delete_if { |el| el.id == id }
  end
end
