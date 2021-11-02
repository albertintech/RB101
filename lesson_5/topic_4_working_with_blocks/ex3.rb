[[1, 2], [3, 4]].map do |arr|
  puts arr.first
  arr.first
end

# The Array#map method is being called on the multi-dimensional array [[1, 2], [3, 4]].

# Each inner array is passed to the block in turn and assigned to the local variable arr.

# The Array#first method is called on arr and returns the object at index 0 of the current array - in this case the integers 1 and 3, respectively.

# The puts method then outputs a string representation of the integer.

# The last line indicates the return value of the block, which is the return value of Array#first. Hence the block's return value is 1 and 3. 
