VALID_CHOICES = ['rock', 'paper', 'scissor', 'lizard', 'spock']

def prompt(message)
  puts("=> #{message}")
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
  (first == 'rock' && second == 'lizard') || 
  (first == 'paper' && second == 'rock') ||
  (first == 'paper' && second == 'spock') ||
  (first == 'scissors' && second == 'paper') ||
  (first = 'scissors' && second == 'lizard') ||
  (first == 'lizard' && second == 'spock') ||
  (first == 'lizard' && second == 'paper') ||
  (first == 'spock' && second == 'rock') ||
  (first == 'spock' && second == 'scissors')
    
end

def display_result(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def results(player, computer)
  player_score = 0
  computer_score = 0
  if win?(player, computer)
    player_score += 1
    if player_score == 5
      puts("You won!")
    end
  elsif win?(computer, player)
    computer_score += 1
    if computer_score == 5
      puts{"Computer won!"}
    end
  else
    puts("It's a tie!")
  end
end

# def score(player, computer)
#   player_score = 0
#   computer_score = 0
#   if win?(player, computer)
#     player_score += 1
#   else win?(computer, player)
#     computer_score += 1
#   end
# end

loop do
  choice = ''
  round = 0
  player_score = 0
  computer_score = 0

  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice")
    end
  end

  computer_choice = VALID_CHOICES.sample

  puts("You chose: #{choice}; Computer chose: #{computer_choice}")
  
  display_result(choice, computer_choice)

  results(choice, computer_choice)

  # prompt("Do you want to play again?")
  # answer = gets.chomp
  # break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing.  Good bye!")
