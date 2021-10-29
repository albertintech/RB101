# My solution

counter = 0

loop do
  break if counter >=1
  puts 'This is the outer loop.'

  loop do
    puts 'This is the inner loop.'
    break
  end
  counter += 1
end

puts 'This is outside all loops.'

# LS Solution

loop do
  puts 'This is the outer loop.'

  loop do
    puts 'This is the inner loop.'
    break
  end

  break
end

puts 'This is outside all loops.'
