class Account
  attr_reader :balance, :activity_log
  def initialize
    @balance = 0
    @activity_log = []
  end

  def credit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end
end