# Start with a hash:

hash = {
  'key1' => 'value1',
  'key2' => 'value2',
  'key3' => 'value3',
  'key4' => 'value4'
}

In order to loop through the hash, we need:

 - A hash
 - A counter
    - To use as an element reference argument
    - To increment each iteration
 - A break if statement to stop the loop
    - When the counter == the number of key/value pairs
 - An array of the hash keys
 - Two placeholder variables:
    - One to hold each key per iteration
    - One to hold each value per iteration

The patter will be:

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

array_of_keys_in_hash = hash.keys
=> ['key1', 'key2', 'key3', 'key4']

We needs this array to iterate through each key by means of a counter. First, we will check if we need to carry out the logic of our loop with a break if statement:

break if counter >= hash.size

array_of_keys_in_hash[counter]

Then, as the loop increments through the each counter, the corresponding element, the key, is put into a variable:

current_key = array_of_keys_in_hash[counter]

This variable ('current_key') is then used as the element reference argument on the original hash.

hash[current_key]

As each key value ('current_key') returns the corresponding value, the value is placed into a variable:

current_value = hash[current_key]

Now we can use string interpolation to print out each key and value pair:

puts "There is this key #{current_key} that has this value #{current_value}"

Finally, we increment the counter

counter += 1
