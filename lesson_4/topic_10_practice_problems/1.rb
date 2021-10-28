# What is the return value of the select method below? Why?

[1, 2, 3].select do |num|
  num > 5
  'hi'
end

# Answer: [1, 2, 3]. Why? Becuase the return value of the block is a string, which is truthy, the return value of select is a new array with each truthy value, ie all values in this case.

# Ruby Docs:
# select {|item| block} → new_ary
# select → Enumerator
# Returns a new array containing all elements of ary for which the given block returns a true value.
#
# If no block is given, an Enumerator is returned instead.

#LS Solution:
# select performs selection based on the truthiness of the block's return value. In this case the return value will always be 'hi', which is a "truthy" value. Therefore select will return a new array containing all of the elements in the original array.
