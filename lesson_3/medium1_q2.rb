# The result of the following statement will be an error:

# puts "the value of 40 + 2 is " + (40 + 2)

# Why is this and what are two possible ways to fix this?

# Why: Can't concatinate a string with an integer

# Fix 1: convert int to string with .to_s

puts "the value of 40 + 2 is " + (40 + 2).to_s

# Fix 2: Interpolate the '(40 + 2)' addition within the string

puts "the value of 40 + 2 is #{(40 + 2)}"
