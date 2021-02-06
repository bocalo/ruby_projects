module Cashable
  def cash(money)
    pay(money)
  end

  def cash(money)
    @balance += money
  end

  def pay(money)
    @balance += money
  end

  def take(who)
    if who == "Bank"
      puts "The encashment was carried out."
    else
      raise "Call the police right now!"
    end
  end
end
