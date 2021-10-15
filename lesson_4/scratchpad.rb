# Looping Through a Hash Example

number_of_pets = {
  'dogs' => 2,
  'cats' => 4,
  'fish' => 1,
  'snakes' => 3
}
pets = number_of_pets.keys # => ['dogs', 'cats', 'fish', 'snakes']
counter = 0

p number_of_pets.size

loop do
  break if counter == number_of_pets.size # can also use .length
  current_pet = pets[counter]
  current_pet_number = number_of_pets[current_pet]
  puts "I have #{current_pet_number} #{current_pet}!"
  counter += 1
end
