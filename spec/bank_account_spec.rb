require 'bank_account'

describe Account do

  it 'it initialised with an empty account' do
    expect(subject.balance).to eq(0)
  end

  it "should initialise with no activity" do
    expect(subject.activity_log).to eq([])
  end

  describe ".credit" do
    it "credits the account" do
      subject.credit(20)
      expect(subject.balance).to eq(20)
    end

    it "adds a credit transaction to the activity log" do
      subject.credit(2000)
      expect(subject.activity_log.length).to eq(1)
    end  
  end

  describe ".withdraw" do
    it "withdraws money from the account" do
      subject.credit(2000)
      subject.withdraw(500)
      expect(subject.balance).to eq(1500)
    end
  end
end