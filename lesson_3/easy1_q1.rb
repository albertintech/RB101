# What would you expect the code below to print out?

numbers = [1, 2, 2, 3]
print numbers.uniq # Returns [1,2,3]
puts ""
puts numbers.inspect

# I would expect [1, 2, 3]

# Actually, it prints:
# 1
# 2
# 2
# 3

# This is becuase the #uniq method call is not saved to a variable and.
