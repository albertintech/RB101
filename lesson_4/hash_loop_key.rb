# 1. Given a hash, write a loop program that prints each key

hash = {
  'key1' => 'value1',
  'key2' => 'value2',
  'key3' => 'value3',
  'key4' => 'value4'
}

counter = 0
array_of_keys = hash.keys

loop do
  break if counter >= hash.size
  current_key = array_of_keys[counter]
  puts "Current key is: #{current_key}"
  counter += 1
end
