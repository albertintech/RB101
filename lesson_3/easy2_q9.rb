puts "Write a one-liner to count the number of lower-case 't' characters in the following string: 'The Flintstones Rock!'"

puts "Hint: look up the String#count method in the Ruby docs."

statement = "The Flintstones Rock!"

puts "Give the string: #{statement}."

puts "The number of lower case 't' characters in the string equal #{statement.count('t')}."

puts "The number of upper case 'R' characters in the string equal #{statement.count('R')}."

puts "Note that the argument in the count method will return the number of times each individual character appears; it does not count whole strings. Let's demonstrate by using the string 'one' as an example:"

puts "The number of 'one' characters in the string equal #{statement.count('one')}."

puts "Our result is that the total number of 'o', 'n', and 'e' characters equals #{statement.count('one')}."
