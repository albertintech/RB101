# Ruby docs Enumerable#map

# map { |obj| block } → array
# map → an_enumerator
# Returns a new array with the results of running block once for every element in enum.

# If no block is given, an enumerator is returned instead.

# Ruby docs Array#map

# map {|item| block} → new_ary
# map → Enumerator
# Invokes the given block once for each element of self.
#
# Creates a new array containing the values returned by the block.
#
# See also Enumerable#collect.
#
# If no block is given, an Enumerator is returned instead.

# a = [ "a", "b", "c", "d" ]
# a.collect {|x| x + "!"}           #=> ["a!", "b!", "c!", "d!"]
# a.map.with_index {|x, i| x * i}   #=> ["", "b", "cc", "ddd"]
# a                                 #=> ["a", "b", "c", "d"]

# LS Explination of map

# Similar to select, map also considers the return value of the block. The main difference between these two methods is that map uses the return value of the block to perform transformation instead of selection.

hash = { bacon: "protein", apple: "fruit" }

p hash 

arr = hash.map { |k, v| v.size }

p arr
