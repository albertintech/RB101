# Take everything you've learned so far and build a mortgage calculator (or car payment calculator -- it's the same thing).
#
# You'll need three pieces of information:
#
# the loan amount
# the Annual Percentage Rate (APR)
# the loan duration
# From the above, you'll need to calculate the following things:
#
# monthly interest rate
# loan duration in months
# monthly payment
# You can use the following formula:

# m = p * (j / (1 - (1 + j)**(-n)))

# m = monthly payment
# p = loan amount
# j = monthly interest rate
# n = loan duration in months

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i() != 0
end

prompt("Welcome to the Home Loan Calculator! Enter your name: ")
name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt("Make sure you use a valid name please.")
  else
    break
  end
end
prompt("Hello, #{name}.")
