class Transfer
  # your code here
  attr_accessor :sender, :recipient, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
  end

end
