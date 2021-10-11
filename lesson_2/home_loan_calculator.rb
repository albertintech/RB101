# Take everything you've learned so far and build a mortgage calculator (or car payment calculator -- it's the same thing).
#
# You'll need three pieces of information:
#
# the loan amount
# the Annual Percentage Rate (interest_rate)
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

# method to prepend each prompt with "=>"
def prompt(message)
  Kernel.puts("=> #{message}")
end

# to verify non-zero number
def valid_number?(num)
  num != 0
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

# Main Loop
loop do
  loan_amount = ''
  loop do
    prompt("Please enter the loan amount: ")
    loan_amount = Kernel.gets().chomp().to_i
    if valid_number?(loan_amount)
      break
    else
      prompt("Hmm... that does not look like a valid number!")
    end
  end
  prompt("You have entered #{loan_amount}.")

  interest_rate = ''
  loop do
    prompt("Please enter the interest rate: ")
    interest_rate = Kernel.gets().chomp().to_f
    if valid_number?(interest_rate)
      break
    else
      prompt("Hmm... that does not look like a valid number!")
    end
  end

  duration = ''
  loop do
    prompt("Please enter a loan duration in number of years: ")
    duration = Kernel.gets().chomp().to_i

    if valid_number?(duration)
      break
    else
      prompt("Hmm... that does not look like a valid number!")
    end
  end

  months = duration * 12
  annual_interest_rate = interest_rate / 100
  monthly_interest_rate = annual_interest_rate / 12

  # prompt("The monthly interest rate is: #{monthly_interest_rate}")
  result = loan_amount * (monthly_interest_rate/ (1 - (1 + monthly_interest_rate)**(-months)))
  prompt("Your monthly payment will be: $#{format('%.2f', result)}")

  prompt("Do you want to perfom another loan calculation? (Y to calculate again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end
