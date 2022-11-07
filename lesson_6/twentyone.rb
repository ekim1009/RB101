require 'pry'
require 'yaml'

def prompt(msg)
  puts "--> #{msg}"
end

def welcome
  prompt "Welcome to twenty one"
  puts "============"
  prompt "The player with a total of 21 or the closest to it wins"
  prompt "First to win 5 rounds is the winner!"
  puts "============"
end

CARDS = %w(2 3 4 5 6 7 8 9 10 jack queen king ace)
SUITS = %w(diamonds clubs spades hearts)
TOTAL_TO_WIN = 21
DEALER_HITS_UNTIL = 17
TOTAL_GAMES_TO_WIN = 5

def initialize_deck
  CARDS.product(SUITS).shuffle
end

def deal_dealers_cards(deal_crds, deck)
  2.times do
    deal_crds << deck.pop
  end
end

def deal_players_cards(plyr_crds, deck)
  2.times do
    plyr_crds << deck.pop
  end
end

def deal_one_card(deck)
  card = []
  card << deck.pop
  card.flatten!
  prompt "The dealt card is: #{joinof(card)}"
  sleep 1
  card
end

def show_initial_cards(plyrs_crds, deal_crds)
  prompt "Dealer has: #{joinof(deal_crds[0])} and an unknown card"
  prompt "You have: #{joinof(plyrs_crds[0])},  #{joinof(plyrs_crds[1])}," \
         " for a total of: #{calculate_cards(plyrs_crds)}"
end

def joinof(array, delimiter = ', ', word = 'of')
  if array.size == 2
    array.join(" #{word} ")
  else
    array.join(delimiter)
  end
end

def show_players_cards(plyrs_crds)
  display_cards = ''
  plyrs_crds.each do |arr|
    display_cards << "#{joinof(arr)}, "
  end
  display_cards
end

def show_dealers_cards(deals_crds)
  display_cards = ''
  deals_crds.each do |arr|
    display_cards << "#{joinof(arr)}, "
  end
  prompt "Dealer now has: #{display_cards} for a total of: " \
         "#{calculate_cards(deals_crds)}"
end

def bust?(cards)
  calculate_cards(cards) > TOTAL_TO_WIN
end

def busted(players_cards, dealers_cards)
  if bust?(players_cards)
    declare_winner(players_cards, dealers_cards)
  end
end

def calculate_cards(cards)
  values = cards.map { |card| card[0] }

  total = 0
  values.each do |value|
    total += if value == "ace"
      11
    elsif value.to_i == 0
      10
    else
      value.to_i
    end
  end

  values.select { |value| value == "ace" }.count.times do
    total -= 10 if total > TOTAL_TO_WIN
  end

  total
end

def dealer_turn
  system 'clear'
  prompt "It's the dealers turn"
  sleep 1
end

def dealer_hit_or_stay(deal_cards, deck)
  loop do
    if calculate_cards(deal_cards) < DEALER_HITS_UNTIL
      prompt "Dealer hits.."
      sleep 0.5
      deal_cards << deal_one_card(deck)
    else
      prompt "Dealer chose to stay.."
      sleep 0.5
    end
    break if calculate_cards(deal_cards) >= DEALER_HITS_UNTIL
  end
  calculate_cards(deal_cards)
end

# rubocop:disable Metrics/AbcSize, Metrics/MethodLength
def declare_winner(plyr_crds, deal_crds, scores)
  players_total = calculate_cards(plyr_crds)
  dealers_total = calculate_cards(deal_crds)

  if players_total > TOTAL_TO_WIN
    prompt "You busted! Dealer wins! \n\n"
    scores[:dealer] += 1
  elsif dealers_total > TOTAL_TO_WIN
    prompt "Dealer busted! You win! \n\n"
    scores[:player] += 1
  elsif players_total == TOTAL_TO_WIN
    prompt "Your cards total 21! You win! \n\n"
    scores[:player] += 1
  elsif dealers_total == TOTAL_TO_WIN
    prompt "Dealers cards total 21! Dealer wins! \n\n"
    scores[:dealer] += 1
  elsif players_total > dealers_total
    prompt "You win! \n\n"
    scores[:player] += 1
  elsif dealers_total > players_total
    prompt "Dealer wins! \n\n"
    scores[:dealer] += 1
  else
    prompt "It's a tie! \n\n"
  end
end
# rubocop:enable Metrics/AbcSize, Metrics/MethodLength

def scoreboard(scores)
  prompt "Your score is: #{scores[:player]}"
  prompt "Dealer score is: #{scores[:dealer]}"
end

def ultimate_winner(scores)
  if scores[:player] == TOTAL_GAMES_TO_WIN
    prompt "Congratulations! You have won 5 rounds!"
  else
    prompt "Dealer has won 5 rounds! Better luck next time!"
  end
end

def play_again?
  answer = nil
  loop do
    prompt("Would you like to play again? (y or n)")
    answer = gets.chomp.downcase
    break if %w(y n yes no).include?(answer)
    prompt("That is not a valid option")
  end
  system 'clear'
  answer
end

def goodbye
  prompt("Thanks for playing!  Goodbye!")
end

answer = ''
scores = { player: 0, dealer: 0 }

loop do
  welcome
  scores = { player: 0, dealer: 0 }
  loop do
    deck = initialize_deck
    players_cards = []
    dealers_cards = []
    deal_dealers_cards(dealers_cards, deck)
    deal_players_cards(players_cards, deck)
    show_initial_cards(players_cards, dealers_cards)

    loop do
      scoreboard(scores)

      loop do
        prompt("Would you like to 'hit' or 'stay'")
        answer = gets.chomp.downcase
        break if %w(hit stay).include?(answer)
        prompt("That was an invalid choice")
      end

      if answer == 'hit'
        prompt "You chose to hit!"
        players_cards << deal_one_card(deck)
        system 'clear'
        prompt "Dealer has: #{joinof(dealers_cards[0])} and an unknown card\n" \
              "Your cards are now: #{show_players_cards(players_cards)}" \
              "for a total of: #{calculate_cards(players_cards)}"
      else
        prompt "You chose to stay!"
        prompt "Your cards are now: #{show_players_cards(players_cards)}" \
              "for a total of: #{calculate_cards(players_cards)}"
      end
      break if %w(stay).include?(answer) || bust?(players_cards)
    end

    dealer_turn
    dealer_hit_or_stay(dealers_cards, deck)
    show_dealers_cards(dealers_cards)
    show_players_cards(players_cards)
    declare_winner(players_cards, dealers_cards, scores)
    break if scores[:player] == TOTAL_GAMES_TO_WIN ||
             scores[:dealer] == TOTAL_GAMES_TO_WIN
  end
  ultimate_winner(scores)
  break if %w(n no).include?(play_again?)
end

goodbye
