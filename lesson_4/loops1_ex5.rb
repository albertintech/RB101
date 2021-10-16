# Modify the code below so "Hello!" is printed 5 times.
#
# say_hello = true
#
# while say_hello
#   puts 'Hello!'
#   say_hello = false
# end

counter = 1

while counter <= 5
  puts 'Hello!'
  counter += 1
end


#LS Solution
say_hello = true
count = 0

while say_hello
  puts 'Hello!'
  count += 1
  say_hello = false if count == 5
end
