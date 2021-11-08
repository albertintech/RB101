# Prereqs
# split
# reverse
# join(' ')

# Write a method that takes one argument, a string, and returns a new string with the words in reverse order.
#
# Examples:

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''

# The tests above should print true.






































# LS Solution
# def reverse_sentence(string)
#   string.split.reverse.join(' ')
# end

# Discussion
# To reverse the order of substrings within a string, we first need to separate those substrings. In our solution, we use #split with no arguments to separate each word and place it in an array. To reverse the order of the words, we then invoke #reverse on the array. Now, string looks like this:
#
# 'Hello World'.split.reverse # => ["World", "Hello"]
#
# That's precisely what we want except we need it to be a string, not an array. To accomplish this, we invoke #join which joins every element in an array using the given argument as the delimiter.
#
# Note that we don't need to do anything special to handle the last two tests. Since split splits on whitespace when invoked without an argument, both '' and ' ' cause split to return an empty array.
