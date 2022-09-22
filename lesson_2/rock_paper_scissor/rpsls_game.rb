require 'yaml'
MESSAGES = YAML.load_file('rpsls_game_messages.yml')
VALID_OPTIONS = %w(r p sc l sp)

def prompt(message)
  puts("=> #{message}")
end

def operation_to_message(choice)
  word = case choice
         when 'r'
           'rock'
         when 'p'
           'paper'
         when 'sc'
           'scissor'
         when ' l'
           'lizard'
         when 'sp'
           'spock'
         end
end

def winner(first, second)
    (first = 'r' && second == 'sc') ||
    (first = 'r' && second == 'l') ||
    (first = 'p' && second == 'r') ||
    (first == 'p' && second == 'sp') ||
    (first == 'sc' && second == 'p') ||
    (first == 'sc' && second == 'l') ||
    (first == 'l' && second == 'sp') ||
    (first == 'l' && second == 'p') ||
    (first == 'sp' && second == 'r') ||
    (first == 'sp' && second == 'sc')
end

prompt("Welcome to a variation of Rock Paper Scissor")
prompt("Rock Paper Scissor Lizard Spock")
puts("________________")
puts("\n")

# ask user for name
name = ''
loop do
  prompt("What is your name?")
  name = gets.chomp.strip.capitalize
  # make sure name is valid, if valid..
    if name.empty?
      prompt("You must enter a valid name")
    else
      break
    end
end

# welcome user
prompt("Welcome, #{name}")
puts("\n")

user_choice = ''
player_score = 0
computer_score = 0
round = 0
loop do
  loop do
    # ask user to pick their choice of -rock -paper -scissor - lizard - spock
    # allow the user to make choices (r, p, sc, l, sp)
    choice_prompt = <<-MSG
      what would you like to play?
      r) rock
      sc) scissor
      p) paper
      l) lizard
      sp) spock
      MSG

      prompt(choice_prompt)
      user_choice = gets.chomp.strip

    # make sure their input is a valid option
    if 
      VALID_OPTIONS.include?(user_choice)
      break
    else
      prompt("Please make a valid selection")
    end
  end

  # have the computer make a random selection
  computer_choice = VALID_OPTIONS.sample
  prompt("You chose #{operation_to_message(user_choice)} and Computer chose #{operation_to_message(computer_choice)}")

    # make a program to see which is the winner
    # winner gets a point per round
    if
      winner(user_choice, computer_choice)
      prompt("You win this round!")
      player_score += 1
    else
      prompt("You lose this round")
      computer_score += 1
    end

    # once user or computer get 3 point, game is over
    round += 1
    break if round == 3

    # winner is announced
    if player_score > computer_score
      prompt("Comgratulations!  You have won the game!")
    else
      prompt("You lost the game.  Better luck next time!")
    end

  # would user like to play again?
  prompt("Would you like to play again?")
  play_again = gets.chomp.strip.downcase
  
  break unless play_again == 'y'
end

# say goodbye
prompt("Thank you for playing!")
