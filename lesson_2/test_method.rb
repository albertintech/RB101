@p1_score = 0
@p2_score = 0

def score(p1, p2)
  # p1_score = 0
  # p2_score = 0
  if p1 == p2
    puts("No award for ties.")
  elsif p1 > p2
    puts("Player 1 wins!")
    return @p1_score += 1
  else
    puts("Player 2 wins!")
    return @p2_score += 1
  end
end

puts("Player 1 score is: #{@p1_score}")
puts("Player 2 score is: #{@p2_score}")

score(5, 3)

puts("Player 1 score is: #{@p1_score}")
puts("Player 2 score is: #{@p2_score}")
