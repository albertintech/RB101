# Shorten the following sentence:

advice = "Few things in life are as important as house training your pet dinosaur."

# Review the String#slice! documentation, and use that method to make the return value "Few things in life are as important as ". But leave the advice variable as "house training your pet dinosaur.".

# The slice! method can accept the following parameters:
# slice!(integer) → new_str or nil
# slice!(integer, integer) → new_str or nil
# slice!(range) → new_str or nil
# slice!(regexp) → new_str or nil
# slice!(other_str) → new_str or nil
# Deletes the specified portion from str, and returns the portion deleted.

new_advice = advice.slice!(0..38)

p new_advice # => "Few things in life are as important as "
p advice # => "house training your pet dinosaur."

############################# LS Solution:

# Reset advice string
advice = "Few things in life are as important as house training your pet dinosaur."

puts "The index of the string 'house' is #{advice.index('house')}."

advice.slice!(0, advice.index('house'))

# String#index method in Ruby Docs:
# index(substring [, offset]) → integer or nilclick to toggle source
# index(regexp [, offset]) → integer or nil
# Returns the index of the first occurrence of the given substring or pattern (regexp) in str. Returns nil if not found. If the second parameter is present, it specifies the position in the string to begin the search.




# As a bonus, what happens if you use the String#slice method instead?
# Bonus: Using slice, the non-destructive version of slice!, would return a new string with the same text ("Few things in life are as important as ") but the advice variable would remain the same, pointing to the original string ("Few things in life are as important as house training your pet dinosaur.").
