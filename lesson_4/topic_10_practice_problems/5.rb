# What does shift do in the following code? How can we find out?

hash = { a: 'ant', b: 'bear' }
hash.shift #=> [:a, 'ant']
hash       #=> { b: 'bear' }

# Removes the first key-value pair from the hash and returns an array with that first pair. The remaining hash is mutated, that is, it remains changed after shift is called.

# LS Solution
# shift destructively removes the first key-value pair in hash and returns it as a two-item array. If we didn't already know how shift worked, we could easily learn by checking the docs for Hash#shift. The description for this method confirms our understanding:
#
# Removes a key-value pair from hsh and returns it as the two-item array [ key, value ], or the hash’s default value if the hash is empty.
#
# There are quite a few Ruby methods, and you're not expected to know them all. That's why knowing how to read the Ruby documentation is so important. If you don't know how a method works you can always check the docs.
