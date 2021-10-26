# We've explored a basic approach to performing selection with loop, but arrays and hashes also have a built-in way to iterate over a collection and perform selection: through a select method that makes doing this significantly easier. For example, instead of managing a loop manually with a counter and break condition, we can just do this:

[1, 2, 3, 4, 5].select do |num|
  num.odd?
end

# => [1, 3, 5]

# Ruby Docs Array#select:

# select {|item| block} → new_ary
# select → Enumerator
# Returns a new array containing all elements of ary for which the given block returns a true value.
#
# If no block is given, an Enumerator is returned instead.

# To perform selection, select evaluates the return value of the block. The block returns a value on each iteration, which then gets evaluated by select. Similar to a real method, the return value of the block is the return value of the last expression within the block.
#
# When evaluating the block's return value, select only cares about its truthiness. Everything in Ruby is considered "truthy" except for nil and false. That's not exactly the same thing as saying everything except nil and false has a value of true in Ruby, but only that it is "truthy". It's a small, but important, distinction.
#
# If the return value of the block is "truthy", then the element during that iteration will be selected. If the return value of the block is "falsey" then the element will not be selected.
