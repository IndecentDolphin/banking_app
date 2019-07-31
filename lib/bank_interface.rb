require_relative "bank_account"

class Interface

  def display(account)
    print_header
    account.activity_log.each_with_index do |entry, index|
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
      puts "#{account.balance_log[index]}".center(30)
    end
    print_footer
  end

  private
  def print_header
    puts "STATEMENT".center(100)
    print "DATE".center(30)
    print "CREDIT".center(20)
    print "DEBIT".center(20)
    puts "BALANCE".center(30)
    puts "-"  * 100
  end

  def print_footer
    puts "THANK YOU, COME AGAIN".center(100)
  end
end