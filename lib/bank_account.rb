require_relative 'bank_transaction'
class Account
  attr_reader :balance, :activity_log, :balance_log
  def initialize
    @balance = 0
    @activity_log = []
    @balance_log = []
  end

  def credit(amount)
    @balance += amount
    @activity_log << Transaction.new(amount, "credit")
    @balance_log << @balance
  end

  def withdraw(amount)
    @balance -= amount
    @activity_log << Transaction.new(amount, "withdraw")
    @balance_log << @balance
  end
end