VALID_CHOICES = ['rock','paper','scissors']

def prompt(message)
  Kernel.puts("=> #{message}")
end

choice = ''
loop do
  prompt("Choose one: #{VALID_CHOICES.join(', ')}")
  choice = Kernel.gets().chomp()

  if VALID_CHOICES.include?(choice)
    break
  else
    prompt("That's not a valid choice.")
  end
end

computer_choice = VALID_CHOICES.sample()

prompt("You chose #{choice}. Computer chose: #{computer_choice}.")

if    (choice == 'rock' && computer_choice == 'scissors') ||
      (choice == 'paper' && computer_choice == 'rock') ||
      (choice == 'scissors' && computer_choice == 'paper')
  prompt("You won!")
elsif (choice == 'rock' && computer_choice == 'paper') ||
      (choice == 'paper' && computer_choice == 'scissors') ||
      (choice == 'scissors' && computer_choice == 'rock')
  prompt("You lost!")
else
  prompt("Tie!")
end
