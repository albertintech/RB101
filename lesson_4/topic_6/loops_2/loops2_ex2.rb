# Modify the following code so that the loop stops if number is equal to or between 0 and 10.

# loop do
#   number = rand(100)
#   puts number
# end

iteration = 1
loop do
  number = rand(100) # returns between 0 and (100-1)
  puts "Current number is #{number} and interation is #{iteration}"
  iteration += 1
  if (1..10).include?(number)
    break
  end
end

# Other if statements that work:

  # if number.between?(0, 10)
  #   break
  # end

  # if number >= 0 && number <= 10
  #   break
  # end
