class BankAccount
  # Where is attr_reader defined
  # Class.private_instance_methods

  # attr_reader :pin, :balance
  # attr_writer :pin, :balance

  attr_accessor :balance, :pin
  # attr_reader :pin

  # It's how you instantiate a class (BankAccount)
  # When you call BankAccount.new, this method is called
  # Lifecycle method, don't have control over when called
  def initialize(balance = 0)
    # Creating an instance variable (with one @ symbol)
    # gives all instance methods access to this variable
    @balance = balance
  end

  def pin=(new_pin)
    # some logic around the pin being four digits
    if new_pin.to_s.length === 4
      @pin = new_pin
    else
      raise Error
    end
  end

  def print_balance
    # puts "You have $#{@balance}.00 in your account"
    puts "You have $#{self.balance}.00 in your account"
  end

end
