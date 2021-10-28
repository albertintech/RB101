# What is the return value of reject in the following code? Why?

new = [1, 2, 3].reject do |num|
  puts num
end

p new

# Ruby docs:
# reject {|item| block } → new_ary
# reject → Enumerator
# Returns a new array containing the items in self for which the given block is not true. The ordering of non-rejected elements is maintained.

# See also Array#delete_if

# If no block is given, an Enumerator is returned instead.

# LS Solution
# Since puts always returns nil, you might think that no values would be selected and an empty array would be returned. The important thing to be aware of here is how reject treats the return value of the block. reject returns a new array containing items where the block's return value is "falsey". In other words, if the return value was false or nil the element would be selected.
