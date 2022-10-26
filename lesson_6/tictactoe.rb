require 'yaml'
MESSAGES = YAML.load_file('tictactoe_messages.yml')

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]

def prompt(msg)
  puts "--> #{msg}"
end

def rules
  prompt (MESSAGES['welcome'])
end

# rubocop:disable Metrics/MethodLength, Metrics/AbcSize
def display_board(brd)
  system "clear"
  puts "You're a #{PLAYER_MARKER}."
  puts "Computer is a #{COMPUTER_MARKER}."
  puts ""
  puts "      |      |"
  puts "   #{brd[1]}  |   #{brd[2]}  |   #{brd[3]}"
  puts "      |      |"
  puts "------+------+------"
  puts "      |      |"
  puts "   #{brd[4]}  |   #{brd[5]}  |   #{brd[6]}"
  puts "      |      |"
  puts "------+------+------"
  puts "      |      |"
  puts "   #{brd[7]}  |   #{brd[8]}  |   #{brd[9]}"
  puts "      |      |"
  puts ""
end
# rubocop:enable Metrics/MethodLength, Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_square(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def first_move_prompt
  first = ''
  loop do
    prompt (MESSAGES['first_move'])
    first = gets.chomp.downcase
    break if first.start_with?('y') || first.start_with?('n')
    prompt (MESSAGES['not_valid'])
  end
  first
end 

def first_move
  if first_move_prompt == 'y'
    true
  else first_move_prompt == 'n'
    false
  end
end

def alternate_player(current_player)
  if current_player == PLAYER_MARKER
    COMPUTER_MARKER
  else 
    PLAYER_MARKER
  end
end

def place_piece!(brd, current_player)
  if current_player == PLAYER_MARKER
    computer_places_piece!(brd)
  else
    player_places_piece!(brd)
  end 
end

def score_board(brd, player_score, computer_score)
  prompt "Player score is : #{player_score}"
  prompt "Computer score is : #{computer_score}"
end

def round_winner(brd, player_score, computer_score)
  if detect_winner(brd) == 'Player'
    prompt (MESSAGES['plyr_won_rd'])
    player_score += 1
  elsif detect_winner(brd) == 'Computer'
    prompt (MESSAGES['comp_won_rd'])
    computer_score += 1
  else
    prompt (MESSAGES['tie'])
  end
end

def ultimate_winner(player_score, computer_score)
  if player_score == 5
    "Player"
  else
    "Computer"
  end
end

def joinor(array, delimiter=', ', word='or')
  case array.size
  when 0 then ''
  when 1 then array.first
  when 2 then array.join(" #{word} ")
  else
    array[-1] = "#{word} #{array.last}"
    array.join(delimiter)
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a position to place a piece: #{joinor(empty_square(brd))}"
    square = gets.chomp.to_i
    break if empty_square(brd).include?(square)
    prompt (MESSAGES['not_valid'])
  end

  brd[square] = PLAYER_MARKER
end

def find_at_risk_square(line, brd, marker)
  if brd.values_at(*line).count(marker) == 2
    brd.select {|k, v| line.include?(k) && v == INITIAL_MARKER}.keys.first
  else
    nil
  end
end

def computer_places_piece!(brd)
  square = nil
    
  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, COMPUTER_MARKER)
      break if square
    end 
  end
    
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, PLAYER_MARKER)
    break if square
  end
    
  if empty_square(brd) == brd[5]
    square = COMPUTER_MARKER
  end

  if !square
    square = empty_square(brd).sample
  end
     
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_square(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

  
loop do
  rules
  player_score = 0
  computer_score = 0
  first_player = first_move ? 'Player' : 'Computer'
  current_player = first_player
  
  loop do
    board = initialize_board
    display_board(board)
    
    loop do
      display_board(board)
      score_board(board, player_score, computer_score)
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end
    
    round_winner(board, player_score, computer_score)
    break if player_score == 5 || computer_score == 5
  end
  
  prompt "#{ultimate_winner(player_score, computer_score)}"
    
  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt (MESSAGES['play_again'])


# https://stackoverflow.com/questions/1543171/how-can-i-output-leading-zeros-in-ruby
# https://www.geeksforgeeks.org/recursion-in-ruby/
# https://realpython.com/python-minimax-nim/
# https://www.youtube.com/watch?v=trKjYdBASyQ
