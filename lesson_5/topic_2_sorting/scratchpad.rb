arr = [2, 5, 3, 4, 1]

new_arr = arr.sort { |a, b| a <=> b }
# => [1, 2, 3, 4, 5]

puts "This is the original array: #{arr}"

puts "This is the sorted array: #{new_arr}"

puts "Now let's reverse the order by changing the logic in the block."


new_arr = arr.sort { |a, b| b <=> a }

puts "This is the sorted array in descending order: #{new_arr}"
