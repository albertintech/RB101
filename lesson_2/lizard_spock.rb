VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper') ||
    (first == 'lizard' && second == 'paper') ||
    (first == 'spock' && second == 'rock') ||
    (first == 'rock' && second == 'lizard') ||
    (first == 'paper' && second == 'spock') ||
    (first == 'scissors' && second == 'lizard') ||
    (first == 'lizard' && second == 'spock') ||
    (first == 'spock' && second == 'scissors')
end

def tie?(first, second)
  first == second
end

def display_result(player, computer)
  if tie?(player, computer)
    prompt("It's a tie!")
  elsif win?(player, computer)
    prompt("You win!")
  else
    prompt("You lost!")
  end
end

loop do
  player_choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
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

  prompt("Do you want to play again? (y/n)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end
