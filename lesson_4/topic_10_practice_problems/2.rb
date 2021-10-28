# How does count treat the block's return value? How can we find out?

new = ['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

p new

# => 2

# Ruby docs:
# count → int
# count(obj) → int
# count {|item| block} → int
# Returns the number of elements.
#
# If an argument is given, counts the number of elements which equal obj using ==.
#
# If a block is given, counts the number of elements for which the block returns a true value.

# LS Solution:
# If we don't know how count treats the block's return value, then we should consult the docs for Array#count. Our answer is in the description:
#
# If a block is given, counts the number of elements for which the block returns a true value.
#
# Based on this information, we can conclude that count only counts an element if the block's return value evaluates as true. This means that count considers the truthiness of the block's return value.
