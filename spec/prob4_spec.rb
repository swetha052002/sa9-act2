require 'prob4'

RSpec.describe BankAccount do
  describe "#deposit" do
    it "increases the balance by the deposit amount" do
      account = BankAccount.new(1500)
      account.deposit(60)
      expect(account.balance).to eq(1560)
    end
  end

  describe "#withdraw" do
    it "decreases the balance by the withdrawal amount if funds are available" do
      account = BankAccount.new(10000)
      account.withdraw(5000)
      expect(account.balance).to eq(5000)
    end

    it "does not change the balance if insufficient funds" do
      account = BankAccount.new(1500)
      account.withdraw(2000)
      expect(account.balance).to eq(1500)
    end
  end

  describe "#balance" do
    it "returns the current balance" do
      account = BankAccount.new(20000)
      expect(account.balance).to eq(20000)
    end
  end
end
