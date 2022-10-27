require 'yaml'
MESSAGES = YAML.load_file('tictactoe_messages.yml')

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]
WINNING_SCORE = 5

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

def first_move
  first = ''
  loop do
    prompt (MESSAGES['first_move?'])
    first = gets.chomp.downcase
    if first == 'f'
      first = 'Player'
    elsif first == 'c'
      first = 'Computer'
    else first == 'r'
      first = %w(Player Computer).sample
    end
    break if %w(Player Computer).include?(first)
    prompt (MESSAGES['not_valid'])
  end
  first
end

def alternate_player(current_player)
  current_player == 'Player' ? 'Computer' : 'Player'
end

def place_piece!(brd, current_player)
  if current_player == 'Player'
    player_places_piece!(brd)
  else
    computer_places_piece!(brd)
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
    brd.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
  end
  nil
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

  # if !square
  #   square = empty_square(brd) == INITIAL_MARKER
  #   brd[square] = COMPUTER_MARKER
  # end

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

def round_winner(brd)
  if detect_winner(brd) == 'Player'
    prompt (MESSAGES['plyr_won_rd'])
  elsif detect_winner(brd) == 'Computer'
    prompt (MESSAGES['comp_won_rd'])
  else board_full?(brd)
    prompt (MESSAGES['tie'])
  end
end

def current_score(brd, scores)
  if detect_winner(brd) == 'Player'
    scores[:player] += 1
  elsif detect_winner(brd) == 'Computer'
    scores[:computer] += 1
  else
    scores[:ties] += 1
  end
end

def scoreboard(scores)
  prompt "Your score is: #{scores[:player]}"
  prompt "Computer score is: #{scores[:computer]}"
  prompt "Ties: #{scores[:ties]}"
end

# def ultimate_winner(scores)
#   if scores[:player] > scores[:computer]
#     prompt (MESSAGES['plyr_won_game'])
#   else
#     prompt (MESSAGES['comp_won_game'])
#   end
# end

def play_again?
  answer = ''
  loop do
    prompt (MESSAGES['play_again?'])
    answer = gets.chomp.downcase
    break if answer.start_with?('y')
  end
  answer
end

rules
loop do
  board = initialize_board
  scores = { player: 0, computer: 0, ties: 0 }
  current_player = first_move

  loop do
    board = initialize_board
    display_board(board)

    loop do
      display_board(board)
      scoreboard(scores)
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end

    current_score(board, scores)
    break if scores[:player] == WINNING_SCORE ||
             scores[:computer] == WINNING_SCORE
  end

  ultimate_winner(scores)
  play_again?
  break unless play_again?.start_with?('y')
end

prompt (MESSAGES['good_bye'])
