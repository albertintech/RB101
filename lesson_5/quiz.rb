# todo_lists = [
#   {
#     id: 1,
#     list_name: 'Groceries',
#     todos: [
#       { id: 1, name: 'Bread', completed: false },
#       { id: 2, name: 'Milk', completed: false },
#       { id: 3, name: 'Apple Juice', completed: false }
#     ]
#   }
# ]
#
# p todo_lists[0][:todos][2][:name] = 'Orange Juice'
# p todo_lists

# todo_lists = [
#   {
#     id: 1,
#     list_name: 'Groceries',
#     todos: [
#       { id: 1, name: 'Bread', completed: false },
#       { id: 2, name: 'Milk', completed: false },
#       { id: 3, name: 'Apple Juice', completed: false }
#     ]
#   },
#   {
#     id: 2,
#     list_name: 'Homework',
#     todos: [
#       { id: 1, name: 'Math', completed: false },
#       { id: 2, name: 'English', completed: false }
#     ]
#   }
# ]
#
# p todo_lists
#
# todo_lists[1][:todos].each do |todo|
#   todo[:completed] = true
# end
#
# p todo_lists

# Question 6
# a = 'hi'
# english_greetings = ['hello', a, 'good morning']
#
# greetings = {
#   french: ['bonjour', 'salut', 'allo'],
#   english: english_greetings,
#   italian: ['buongiorno', 'buonasera', 'ciao']
# }
#
# greetings[:english][1] = 'hey'
#
# greetings.each do |language, greeting_list|
#   greeting_list.each { |greeting| greeting.upcase! }
# end
#
# puts a
# puts english_greetings[1]
# puts greetings[:english][1]

# Question 8
# [['a', 'b'], ['c', 'd'], ['e', 'f']].map do |sub_arr|
#   sub_arr.map do |letter|
#     letter.upcase
#   end
# end
