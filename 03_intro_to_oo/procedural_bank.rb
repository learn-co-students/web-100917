# PROCEDURAL PROGRAMMING
#
# Procedural programming is the kind of programming that we typically
# learn from day 1. It's the style where we create variables and methods
# in the same scope and use them interchangeably.
#
# Our code also isn't organized in any particular way. At some point,
# we get what we call 'spaghetti code' which is messy and has a lot of
# loose ends if we don't have any techniques to manage organization.

# my_account = {}
# your_account = {}

# def set_balance(bank_account, balance)
#   # changing some data that's not created in the scope of this function
#   bank_account[:balance] = balance
# end
#
# def get_balance(bank_account)
#   bank_account[:balance]
# end

# def set_pin(bank_account, pin)
#   bank_account[:pin] = pin
# end
#
# def get_pin(bank_account)
#   bank_account[:pin]
# end

def set_account_number(bank_account, account_number)
  bank_account[:account_number] = account_number
end

def get_account_number(bank_account)
  bank_account[:account_number]
end

def set_name(bank_account, name)
  bank_account[:name] = name
end

def get_name(bank_account)
  bank_account[:name]
end

def print_balance(bank_account)
  balance = get_balance(bank_account)
  puts "You have $#{balance}.00 in your account"
end
