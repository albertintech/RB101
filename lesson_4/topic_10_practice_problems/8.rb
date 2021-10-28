# How does take work? Is it destructive? How can we find out?

arr = [1, 2, 3, 4, 5]
arr.take(2)

# >> arr.take(2)
# => [1, 2]

# take is non-destructive
# >> arr
# => [1, 2, 3, 4, 5]

# Ruby docs
# take(n) → new_ary
# Returns first n elements from the array.
#
# If a negative number is given, raises an ArgumentError.
#
# See also Array#drop

# a = [1, 2, 3, 4, 5, 0]
# a.take(3)             #=> [1, 2, 3]
