# Given the array below, use loop to remove and print each name. Stop the loop once names doesn't contain any more elements.

names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  name = names.pop # to print out names in reverse order
  puts "#{name}"
  break if names.size == 0
end

# LS Solution

names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.shift
  break if names.empty?
end
