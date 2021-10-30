# Pick out the minimum age from our current Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# LS Solution

p ages.values.min

# Array#values

# values → array
# Returns a new array populated with the values from hsh. See also Hash#keys.
#
# h = { "a" => 100, "b" => 200, "c" => 300 }
# h.values   #=> [100, 200, 300]

# Enumerable#min

# min → obj
# min { |a, b| block } → obj
# min(n) → array
# min(n) { |a, b| block } → array
# Returns the object in enum with the minimum value. The first form assumes all objects implement Comparable; the second uses the block to return a <=> b.
#
# a = %w(albatross dog horse)
# a.min                                   #=> "albatross"
# a.min { |a, b| a.length <=> b.length }  #=> "dog"
# If the n argument is given, minimum n elements are returned as a sorted array.
#
# a = %w[albatross dog horse]
# a.min(2)                                  #=> ["albatross", "dog"]
# a.min(2) {|a, b| a.length <=> b.length }  #=> ["dog", "horse"]
# [5, 1, 3, 4, 2].min(3)                    #=> [1, 2, 3]
