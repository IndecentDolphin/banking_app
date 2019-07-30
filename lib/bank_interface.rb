class Interface
  
  def print_header
    puts "STATEMENT".center(40)
  end

  
  def display(transactions)
     print_header
    transactions.each_with_index do |entry|
      prints "#{entry.date}".center(30)
      if entry.type == "credit"
        prints "#{entry.amount}".center(20)
      else
        prints "".center(20)
      end
      if entry.type == "withdraw"
        prints "#{entry.amount}".center(20)
      else
        prints "".center(20)
      end
      puts entry
  end
end


