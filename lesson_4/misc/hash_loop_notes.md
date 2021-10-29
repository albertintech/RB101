# In order to loop through the hash, we need:

 - A hash
 - A counter
    - To use as an element reference argument
    - To increment each iteration
 - A break if statement to stop the loop
    - When the counter == the number of key/value pairs
 - An array of the hash keys
 - Two placeholder variables:
    - One to hold each key per iteration
      - And use in string interpolation
    - One to hold each value per iteration
      - And use in string interpolation

# The pattern will be:

 - The hash
 - The array of keys
 - The counter set to zero
 - The loop do
    - Break if statement
    - Variable1 assigned by using array_of_keys[counter]
    - Variable2 assigned by using hash[variable1]
    - Puts "#{Variable1} #{Variable2}"
    - Counter increment
    - End

# Start with a hash:

    hash = {
      'key1' => 'value1',
      'key2' => 'value2',
      'key3' => 'value3',
      'key4' => 'value4'
    }

# Pre-loop housekeeping: an array of the keys and counter initialization
# Now let's get the keys of the hash isolated with an array of keys
array_of_keys_in_hash = hash.keys
# => ['key1', 'key2', 'key3', 'key4']

# We need this array to iterate through each key by means of a counter.

counter = 0

########## Let's start the loop:

loop do

# First, we will check if we need to carry out the logic of our loop with a break if statement:

break if counter >= hash.size
# We could also use the length method, either works fine.
# Remember, our counter will do two things: help us return each element in the array of keys by means of the element reference method (array[number of index]). The counter will also track each iteration and serve as the top of the loop checkpoint.

array_of_keys_in_hash[counter]

# Then, as the loop increments through the each counter, the corresponding element, the key, is put into a variable:

current_key = array_of_keys_in_hash[counter]

# This variable ('current_key') is then used as the element reference argument on the original hash.

hash[current_key]
# => returns value paired to key, ie 'value1'

# As each key ('current_key') returns the corresponding value, the value is placed into a variable:

current_value = hash[current_key]

# Now we can use string interpolation to print out each key and value pair:

puts "There is this key #{current_key} that has this value #{current_value}"

# Finally, we increment the counter and end the loop

counter += 1
end

##################### Our whole program looks like this: #######################
hash = {
  'key1' => 'value1',
  'key2' => 'value2',
  'key3' => 'value3',
  'key4' => 'value4'
}

array_of_keys_in_hash = hash.keys # => ['key1', 'key2', 'key3', 'key4']

counter = 0

loop do
  break if counter >= hash.size

  current_key = array_of_keys_in_hash[counter]
  current_value = hash[current_key]
  puts "There is this the current key: '#{current_key}' with current value: '#{current_value}'."
  counter += 1
end
####################### Exercises

1. Given a hash, write a loop program that prints each key
2. Given a hash, write a loop program that prints each value
3. Given a hash, write a loop program that prints each key/value pair
