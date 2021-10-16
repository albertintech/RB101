# Given the array of several numbers below, use an until loop to print each number.
#
  numbers = [7, 9, 13, 25, 18]
#
# Expected output:
#
# 7
# 9
# 13
# 25
# 18

# until loop:
#   until conditional [do]
#     #code
#   end

counter = 0
until counter == numbers.size
  puts numbers[counter]
  counter += 1
end
