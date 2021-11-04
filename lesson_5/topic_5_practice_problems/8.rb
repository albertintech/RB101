# Using the each method, write some code to output all of the vowels from the strings.

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each do |_, value|
  value.each do |str|
   p str.scan(/[aeiou]/)
 end
end


# LS Solution

# vowels = 'aeiou'

# hsh.each do |_, value|
#   value.each do |str|
#     str.chars.each do |char|
#       puts char if vowels.include?(char)
#     end
#   end
# end

# The key here is to first iterate through the hash to access the values (the arrays) and then iterate through each array to access each string. At this point String#chars can be called within the block to return an array of characters for that string in that iteration, this array of characters can itself then be iterated through and puts called if on its iteration the character meets a condition (in this case that it is present in the vowels variable).


# Note that we used each here, which means each iteration has an argument for a key and one for the value. Since we don't care about the key, we just use _ to signify that this is an argument that we aren't going to use. We could also have used Hash#values as well.
