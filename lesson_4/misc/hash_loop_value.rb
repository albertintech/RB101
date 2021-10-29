# 2. Given a hash, write a loop program that prints each value

hash = {
  'key1' => 'value1',
  'key2' => 'value2',
  'key3' => 'value3',
  'key4' => 'value4'
}

array_of_values = hash.values

counter = 0

loop do
  break if counter >= hash.size
  current_value = array_of_values[counter]
  puts "This is the current value: #{current_value} for iteration #{counter}."
  counter += 1
end
