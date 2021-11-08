Prereqs:
# hashes
# uniq
# each { || }
# count

# Write a method that counts the number of occurrences of each element in a given array.

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)

# The words in the array are case-sensitive: 'suv' != 'SUV'. Once counted, print each element alongside the number of occurrences.
#
# Expected output:

car => 4
truck => 3
SUV => 1
motorcycle => 2































# LS Solution
# def count_occurrences(array)
#   occurrences = {}
#
#   array.uniq.each do |element|
#     occurrences[element] = array.count(element)
#   end
#
#   occurrences.each do |element, count|
#     puts "#{element} => #{count}"
#   end
# end

# Discussion
# As we iterate over each unique element, we create a new key-value pair in occurrences, with the key as the element's value. To count each occurrence, we use Array#count to count the number of elements with the same value.
#
# Lastly, to print the desired output, we call #each on the newly created occurrences, which lets us pass the keys and values as block parameters. Then, inside of the block, we invoke #puts to print each key-value pair.
