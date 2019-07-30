class Transaction
  attr_reader :amount, :type, :date
  def initialize(amount,type)
    @amount = amount
    @type = type
    @date = Transaction.reformated_date
  end

  def self.reformated_date
    Time.now().strftime("%d/%m/%Y")
  end

end