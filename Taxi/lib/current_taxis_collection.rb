require_relative "current_taxi"

class CurrentTaxisCollection
  attr_reader :current_taxis

  def initialize()
    @current_taxis = []
  end

  def all
    @current_taxis
  end

  def add(current_taxi)
    if @current_taxis.length == 0
      current_taxi.id = 1
    else
      last = @current_taxis.last.id + 1
      current_taxi.id += last
    end
    @current_taxis << current_taxi
  end

  def find(id)
    @current_taxis.select { |el| el.id == id }
  end

  def remove(id)
    @current_taxis.delete_if { |el| el.id == id }
  end
end
