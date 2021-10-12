# Replace the word "important" with "urgent" in this string:

advice = "Few things in life are as important as house training your pet dinosaur."

arr = advice.split

arr[6] = "urgent"

puts advice
puts arr.join(' ')

# LS Solution
advice.gsub!('important', 'urgent')

# Ruby Docs
# gsub!(pattern, replacement) → str or nil
# gsub!(pattern, hash) → str or nil
# gsub!(pattern) {|match| block } → str or nil
# gsub!(pattern) → an_enumerator
# Performs the substitutions of String#gsub in place, returning str, or nil if no substitutions were performed. If no block and no replacement is given, an enumerator is returned instead.
