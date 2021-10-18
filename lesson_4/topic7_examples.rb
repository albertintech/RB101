# alphabet = 'abcdefghijklmnopqrstuvwxyz'
# selected_chars = ''
# counter = 0
#
# loop do
#   current_char = alphabet[counter]
#
#   if current_char == 'g'
#     selected_chars << current_char    # appends current_char into the selected_chars string
#   end
#
#   counter += 1
#   break if counter == alphabet.size
# end
#
# puts selected_chars # => "g"

#######################################

# fruits = ['apple', 'banana', 'pear']
# transformed_elements = []
# counter = 0
#
# loop do
#   current_element = fruits[counter]
#
#   transformed_elements << current_element + 's'   # appends transformed string into array
#
#   counter += 1
#   break if counter == fruits.size
# end
#
# puts transformed_elements # => ["apples", "bananas", "pears"]

#######################################

# def select_vowels(str)
#   selected_chars = ''
#   counter = 0
#
#   loop do
#     current_char = str[counter]
#
#     if 'aeiouAEIOU'.include?(current_char)
#       selected_chars << current_char
#     end
#
#     counter += 1
#     break if counter == str.size
#   end
#
#   selected_chars
# end
#
# puts select_vowels("I am what I am and that's all that I am.").size
#
# puts select_vowels("To be or not to be").size

#######################################

# produce = {
#   'apple' => 'Fruit',
#   'carrot' => 'Vegetable',
#   'pear' => 'Fruit',
#   'broccoli' => 'Vegetable'
# }
#
# select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}

#######################################

def double_numbers(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    doubled_numbers << current_number * 2

    counter += 1
  end

  doubled_numbers
end

my_numbers = [25, 75, 100]
puts double_numbers(my_numbers)

#######################################
