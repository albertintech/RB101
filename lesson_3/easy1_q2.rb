# Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios:
#
# what is != and where should you use it?
# != means "not equal to" and I would use it to perform conditional logic of some kind.

# put ! before something, like !user_name
# this should turn a given truth/truthiness value into its opposite
# put ! after something, like words.uniq!
# Add the bang operator after a method usually results in mutating the caller, aka makes a method destructive
# put ? before something
# put ? after something
# put !! before something, like !!user_name
# Returns the original boolean value, ie same as w/o !!

# LS Solution:
# Just to clarify, if you see ! or ? at the end of the method, it's actually part of the method name, and not Ruby syntax. Therefore, you really don't know what the method is doing, even if it ends in those characters -- it depends on the method implementation. The other uses are actual Ruby syntax:
#
# != means "not equals"
# ? : is the ternary operator for if...else
# !!<some object> is used to turn any object into their boolean equivalent. (Try it in irb)
# !<some object> is used to turn any object into the opposite of their boolean equivalent, just like the above, but opposite.
