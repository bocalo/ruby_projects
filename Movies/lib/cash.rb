module Cash
  module Cashable
    INITIAL_BALANCE = 25

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

      def take(who)
        if who == "Bank"
          @balance = 0
          puts "The encashment was carried out."
        else
          raise "Call the police right now!"
        end
      end
    end
  end
end

#   module InstanceMetods
#     def pay(money)
#       @balance += money
#     end

#     def take(who)
#       if who == "Bank"
#         @balance = 0
#         puts "The encashment was carried out."
#       else
#         raise "Call the police right now!"
#       end
#     end
#   end
# end

# if @@balance == self.class.balance
#   include Cashable
# Netflix.cash
# Netflix.add(amount)
# elsif @balance == balance
#   include ClassMethods
# theatre.cash
# theatre.add(amount)
#end

# def self.included(base)
#   base.extend(ClassMethods)
# end
