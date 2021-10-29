# [1, 2, 3].each do |num|
#   puts num
# end
#
# hash = { a: 1, b: 2, c: 3 }
#
# hash.each do |key, value|
#   puts "The key is #{key} and the value is #{value}"
# end

# So far, we've learned that the most effective option for iterating over a collection is to use a loop, like this:

# numbers = [1, 2, 3]
# counter = 0
#
# loop do
#   break if counter == numbers.size
#   puts numbers[counter]
#   counter += 1
# end

# Iterating over a collection is such a common task that Ruby provides a method to do just that. The each method is functionally equivalent to using loop and represents a simpler way of accomplishing the same task. Here's an example that produces the same result as the implementation above:

# [1, 2, 3].each do |num|
#   puts num
# end

# or this using "{}"
# [1, 2, 3, 4].each { |num| puts num }

# The code within the block is executed for each iteration. In this case the code within the block is puts num which means each element in the array will be output by the puts method.
#
# How does the block know what num is? For each iteration, each sends the value of the current element to the block in the form of an argument. In this block, the argument to the block is num and it represents the value of the current element in the array.
#
# Since we're working with an array here, each knows that there's only one element per iteration, so each sends the block only one argument, num. Hashes, however, need two arguments in order to represent both the key and the value per iteration. Calling each on a hash looks a little different, since the block has two arguments:

hash = { a: 1, b: 2, c: 3 }

hash.each do |key, value|
  puts "The is #{key} and the value is #{value}"
end

# We can iterate over an array or hash in a manual way by using loop, or we can iterate more idiomatically using each -- they're equivalent, for the most part. One of the main differences between them, however, is the return value. Once each is done iterating, it returns the original collection. We can verify this by testing it in irb.

# irb :001 > [1, 2, 3].each do |num|
# irb :002 >   puts num
# irb :003 > end
# 1
# 2
# 3
# => [1, 2, 3]

# Note that [1, 2, 3].each is the last expression in the example above, despite there being some code in the block. Therefore, the return value of the entire expression is the return value of the each invocation, which is the original collection ([1, 2, 3]).

# We can see another example of this by placing each within a method. The return value of a_method is the return value of the last expression within the method. In this example we've slightly changed what happens in the block; now puts is outputting the number for each iteration multiplied by 2.

def a_method
  [1, 2, 3].each do |num|
    puts num * 2
  end
end

# When calling the method we can clearly see that the return value is [1, 2, 3]. This is because the last expression in the method is [1, 2, 3].each, which has a return value of [1, 2, 3].

# a_method # => [1, 2, 3]

# What if we added a statement after #each? What will the return value of a_method be?

def a_method
  [1, 2, 3].each do |num|
    puts num * 2
  end

  puts 'hi'
end

# The return value of a_method has changed to nil. Why? The last expression within the method has changed from each to puts 'hi'. Since puts always returns nil, the return value of a_method is nil.
