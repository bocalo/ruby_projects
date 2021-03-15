require_relative 'order'

class OrdersCollection
  attr_reader :orders

  def initialize
    @orders = []
  end

  def add(order)
    @orders << order
  end

  def all
    @orders
  end

  def find(order)
    
  end

  def remove(order)
  end
end
