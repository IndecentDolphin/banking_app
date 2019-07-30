require 'bank_transaction'
require 'timecop'

describe Transaction do
  let(:money){Transaction.new(200, "credit")}

  it "should be initilised with an amount" do
    expect(money.amount).to eq(200)
  end

  it "should have a transx type" do
    expect(money.type).to eq("credit")
  end

  describe ".reformated_time" do
    before do
      Timecop.freeze(Time.local(2019, 7, 30))
    end
  
    after do
      Timecop.return
    end

    it "should reformat time to format dd/mm/yyyy" do
      expect(Transaction.reformated_date).to eq("30/07/2019")
    end
  end
end