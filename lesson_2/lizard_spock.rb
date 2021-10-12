VALID_CHOICES = ['r', 'p', 'sc', 'l', 'sp']

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first == 'r' && second == 'sc') ||
    (first == 'p' && second == 'r') ||
    (first == 'sc' && second == 'p') ||
    (first == 'l' && second == 'p') ||
    (first == 'sp' && second == 'r') ||
    (first == 'r' && second == 'l') ||
    (first == 'p' && second == 'sp') ||
    (first == 'sc' && second == 'l') ||
    (first == 'l' && second == 'sp') ||
    (first == 'sp' && second == 'sc')
end

def tie?(first, second)
  first == second
end

def display_result(player, computer)
  if tie?(player, computer)
    prompt("It's a tie! No points awarded.")
  elsif win?(player, computer)
    prompt("You win!")
    @player_score += 1
  else
    prompt("You lost!")
    @computer_score += 1
  end
end


# def display_score(player, computer)
#   if tie?(player, computer)
#     prompt("No points awarded for a tie.")
#   elsif win?(player, computer)
#     return player_score += 1
#   else
#     return computer_score += 1
#   end
# end

# def score(wins, loses)
#    If player wins, score += 1
#    If computer wins, score += 1
#    First to score 3 wins
#    If player score = 3, puts Player wins!
#    If computer score = 3, puts Computer wins!
# end

short_names = <<-MSG
  Abbreviations for each move:
  rock     => r
  paper    => p
  scissors => sc
  lizard   => l
  Spock    => sp
MSG

@player_score = 0
@computer_score = 0

loop do
  player_choice = ''
  loop do
    prompt("Current scores are Player:#{@player_score} and Computer:#{@computer_score}")
    prompt(short_names)
    prompt("Select an abbreviation to play: #{VALID_CHOICES.join(', ')}")
    player_choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(player_choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample()

  prompt("You chose #{player_choice}. Computer chose: #{computer_choice}.")

  display_result(player_choice, computer_choice)
  # display_score(player_choice, computer_choice)

  # prompt("Do you want to play again? (y/n)")
  # answer = Kernel.gets().chomp()
  break if (@player_score == 3) || (@computer_score == 3)
end
