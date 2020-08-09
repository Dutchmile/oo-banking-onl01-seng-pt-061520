class Transfer
  # your code here
  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    self.sender.valid?
    self.receiver.valid?
    self.status == "pending"
  end

  def execute_transaction
    if self.sender.balance < amount
      "Transaction rejected. Please check your account balance."  
    elsif self.valid?
      self.receiver.balance += amount
      self.sender.balance -= amount
      self.status = "complete"

    end
  end
    end
