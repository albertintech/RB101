str = 'abcdefghi'

puts "The string is #{str}"

puts "The string is #{str.length} characters long"

puts "The character at index 2 is #{str[2]}"

puts "Starting with index 2, I will return 4 characters using str[2, 4]: #{str[2, 4]}"

puts "Using str[2, 4] is actually a call to the String#slice method and equivalent to str.slice(2, 4): #{str.slice(2, 4)}"
