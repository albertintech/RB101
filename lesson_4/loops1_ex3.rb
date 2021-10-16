# Modify the following loop so it iterates 5 times instead of just once.

iterations = 1

loop do
  break if iterations >= 6
  puts "Number of iterations = #{iterations}"
  iterations += 1
end

# LS Solution

iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  iterations += 1
  break if iterations > 5
end
