module Cash
  module ClassMethods
    def cash
      @balance
    end
  end

  module InstanceMetods
    def pay(money)
      @balance += money
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
