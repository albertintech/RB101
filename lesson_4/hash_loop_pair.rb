# 3. Given a hash, write a loop program that prints each key/value pair

# frozen_string_literal: false

hash = {
  'key1' => 'value1',
  'key2' => 'value2',
  'key3' => 'value3',
  'key4' => 'value4'
}

key_array = hash.keys # => ['key1', 'key2', 'key3', 'key4']

counter = 0

loop do
  break if counter >= hash.size

  current_key = key_array[counter]
  current_value = hash[current_key]
  puts "There is this the current key: '#{current_key}' with current value: '#{current_value}'."
  counter += 1
end
