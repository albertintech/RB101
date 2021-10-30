# In the array:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Find the index of the first name that starts with "Bam"

p flintstones.index { |name| name[0, 3] == "Bam" }

# Array#index

# index(obj) → int or nil
# index {|item| block} → int or nil
# index → Enumerator
# Returns the index of the first object in ary such that the object is == to obj.
#
# If a block is given instead of an argument, returns the index of the first object for which the block returns true. Returns nil if no match is found.
#
# See also Array#rindex.
#
# An Enumerator is returned if neither a block nor argument is given.
#
# a = [ "a", "b", "c" ]
# a.index("b")              #=> 1
# a.index("z")              #=> nil
# a.index {|x| x == "b"}    #=> 1
