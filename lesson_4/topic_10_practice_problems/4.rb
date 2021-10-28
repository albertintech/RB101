# What is the return value of each_with_object in the following code? Why?

new = ['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

p new

# => ['ant', 'bear', 'cat']??? No. Return value is the given object used as the argument in the each_with_object method. In this case, a hash will be the return value.

# Ruby docs:
# each_with_object(obj) { |(*args), memo_obj| ... } → obj
# each_with_object(obj) → an_enumerator
# Iterates the given block for each element with an arbitrary object given, and returns the initially given object.

# LS Solution:

# => { "a" => "ant", "b" => "bear", "c" => "cat" }

# Based on our knowledge of each, it might be reasonable to think that each_with_object returns the original collection. That isn't the case, though. When we invoke each_with_object, we pass in an object ({} here) as an argument. That object is then passed into the block and its updated value is returned at the end of each iteration. Once each_with_object has iterated over the calling collection, it returns the initially given object, which now contains all of the updates.

# In this code, we start with the hash object, {}. On the first iteration, we add "a" => "ant" to the hash. On the second, we add "b" => "bear", and on the last iteration, we add "c" => "cat". Thus, #each_with_object in this example returns a hash with those 3 elements.
