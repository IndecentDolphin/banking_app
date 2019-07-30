require 'bank_account'

describe Account do

  it 'it initialised with an empty account' do
    expect(subject.balance).to eq(0)
  end

  describe ".credit" do
    it "credits the account" do
      subject.credit(20)
      expect(subject.balance).to eq(20)
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