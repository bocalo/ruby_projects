module LolKek
  module Cashable
    INITIAL_BALANCE = 10

    def self.included(klass)
      klass.extend(ClassMethods)
    end

    def cash
      self.class.balance
    end

    def add(amount)
      self.class.balance = cash + amount
    end

    module ClassMethods
      def balance
        @balance || 0
      end

      def balance=(val)
        @balance = val
      end
    end
  end

  class Inst
    include Cashable
  end
end

o1 = LolKek::Inst.new
o2 = LolKek::Inst.new
o1.add(10)

puts o1.cash
puts o2.cash

# Итак, как насчет этого: когда мы вызываем include первую строку, мы каким-то образом уведомляем модуль о том, что он был включен, а также передаем ему наш объект класса, чтобы он мог вызывать extend сам себя. Таким образом, задача модуля - добавлять методы класса, если он этого хочет.
# Именно для этого и предназначен специальный self.included метод . Ruby автоматически вызывает этот метод всякий раз, когда модуль включается в другой класс (или модуль), и передает объект класса хоста в качестве первого аргумента:
# module M
#   def new_instance_method; "hi"; end

#   def self.included(base) # `base` is `HostClass` in our case
#     base.extend ClassMethods
#   end

#   module ClassMethods
#     def new_class_method; "hello"; end
#   end
# end

# class HostKlass
#   include M

#   def self.existing_class_method; "cool"; end
# end

# HostKlass.singleton_class.included_modules
#=> [M::ClassMethods, Kernel]
#    ^ still there!
######################

class << self
  def show
    puts "123"
  end
end
