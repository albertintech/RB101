# Write a method that takes one argument, a positive integer, and returns the sum of its digits.

# Examples

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

# The tests above should print true.
#
# For a challenge, try writing this without any basic looping constructs (while, until, loop, and each).

# LS Solution 1

def sum(number)
  sum = 0
  str_digits = number.to_s.chars

  str_digits.each do |str_digit|
    sum += str_digit.to_i
  end

  sum
end

# LS Solution 2
# map
# reduce

def sum(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end
