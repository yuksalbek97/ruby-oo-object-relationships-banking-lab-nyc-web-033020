class Transfer
  # your code here
  attr_reader :amount
attr_accessor :sender, :receiver, :status, :receipt
@@all = []
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
    @receipt = 0
    

  end
 def valid?
  if self.sender.valid? && self.receiver.valid?
    true
  else
    false
  end
end
def execute_transaction
if @sender.balance < @amount 
  @status = "rejected"
   "Transaction rejected. Please check your account balance."

elsif self.valid?
    @sender.balance -= @amount
    @receiver.balance += @amount
    @status = "complete"
    @receipt = @amount
    @amount = 0
else 
   @status = "rejected"
   "Transaction rejected. Please check your account balance."

  end
end
def self.all
  @@all
end
def reverse_transfer
  Transfer.all.each do |key|
    if self == key
      self.sender.balance += receipt
      self.receiver.balance -= receipt

    end
  end  
end

end
