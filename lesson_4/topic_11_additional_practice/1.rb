# Given the array below

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# Turn this array into a hash where the names are the keys and the values are the positions in the array.

flintstones_hsh = {}
flintstones.each_with_index do |name, index|
  flintstones_hsh[name] = index
end

p flintstones
p flintstones_hsh

# Notes

# There is no way a beginner to Ruby will reasonably come up with this solution.

# I had an idea that I would need to use #each to iterate through the array and then somehow insert the index value after each given "key" value, but how?

# Of course, there is a built in Ruby method to do just that!

# We need to use Enumerable#each_with_index. Here it is in the docs:

# each_with_index(*args) { |obj, i| block } → enumclick to toggle source
# each_with_index(*args) → an_enumerator
# Calls block with two arguments, the item and its index, for each item in enum. Given arguments are passed through to each().

# If no block is given, an enumerator is returned instead.

hash = Hash.new
%w(cat dog wombat).each_with_index { |item, index|
  hash[item] = index
}
 p hash   #=> {"cat"=>0, "dog"=>1, "wombat"=>2}
