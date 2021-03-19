require_relative "car"
require_relative "driver"
require_relative "order"

class BaseCollection
  attr_reader :items

  def initialize
    @items = []
  end

  def all
    @items
  end

  def add(item)
    if @items.length == 0
      item.id = 1
    else
      last = @items.last.id + 1
      item.id += last
    end
    @items << item
  end

  def find(id)
    @items.select { |el| el.id == id }
  end

  def remove(id)
    @items.delete_if { |el| el.id == id }
  end
end
