require_relative 'bank_transaction'
class Account
  attr_reader :balance, :activity_log
  def initialize
    @balance = 0
    @activity_log = []
  end

  def credit(amount)
    @balance += amount
    @activity_log << Transaction.new(amount, "credit")
  end

  def withdraw(amount)
    @balance -= amount
  end
end