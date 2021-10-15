# frozen_string_literal: false

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
