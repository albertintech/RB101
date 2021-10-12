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
    prompt("It's a tie!")
  elsif win?(player, computer)
    prompt("You win a point!")
    # @player_score += 1
  else
    prompt("Computer wins a point!")
    # @computer_score += 1
  end
end

def display_score(player, computer)
  if tie?(player, computer)
    prompt("No points awarded for a tie.")
  elsif win?(player, computer)
    @player_score += 1
  else
    @computer_score += 1
  end
end

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
  prompt("First player to score 3 wins is the Grand Champion!")
  loop do
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
  display_score(player_choice, computer_choice)

  # prompt("Do you want to play again? (y/n)")
  # answer = Kernel.gets().chomp()
  prompt("Scores: Player:#{@player_score} - Computer:#{@computer_score}.")
  if (@player_score == 3) || (@computer_score == 3)
    prompt("A player has reached 3 wins! Game over!")
    break
  end
end
