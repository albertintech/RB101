# As we have seen previously we can use some built-in string methods to change the case of a string. A notably missing method is something provided in Rails, but not in Ruby itself...titleize. This method in Ruby on Rails creates a string that has each word capitalized as it would be in a title. For example, the string:

string = "the flintstones rock"

# would be:

# string = "The Flintstones Rock"

# Write your own version of the rails titleize implementation.

# LS Solution
# words.split.map { |word| word.capitalize }.join(' ')

puts "First, here is the string: #{string}"

puts "Call the split method on the string, which results in an array of strings: #{string.split}"

puts "Now what we want to have happen is that each element in the array undergoes a transformation, the results of which are collected into a new array. What method can do that for for an array? Each, select, or map?"

puts "Map is the correct answer."

puts "Map will accept a block. What do we need to do with each string?"

puts "We want to capitalize each string and return an new array."

puts "Adding map to the method chain results in: #{string.split.map {|word| word.capitalize}}"

puts "Lastly, we need to take each capitalized string and stitch them back together into a string like our original sentence."

puts "We can do this with the join method and an arguement to join with spaces: #{string.split.map { |word| word.capitalize }.join(' ')} "
