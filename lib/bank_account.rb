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

  def display
    print_header
    @activity_log.each_with_index do |entry, index|
      print "#{entry.date}".center(30)
      if entry.type == "credit"
        print "#{entry.amount}".center(20)
      else
        print "".center(20)
      end
      if entry.type == "withdraw"
        print "#{entry.amount}".center(20)
      else
        print "".center(20)
      end
      puts "#{balance_log[index]}".center(30)
    end
  end

  private
  def print_header
    puts "STATEMENT".center(100)
    print "DATE".center(30)
    print "CREDIT".center(20)
    print "DEBIT".center(20)
    puts "BALANCE".center(30)
  end
end