module Cash
  def cash(money)
    pay(money)
  end

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
