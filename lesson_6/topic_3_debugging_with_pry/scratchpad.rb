require 'pry'

# 10.times { |i| print i, " " }

# a = true
# p a
#
# if a
#   puts 'It\'s true!'
# end

puts "Please pick an option: 1 or 2"
user_input = gets.chomp
p user_input
# binding.pry
if user_input.to_i == 1
  puts "You picked option 1"
elsif user_input == '2'
  puts "You picked option 2"
else
  puts "Invalid option!"
end
