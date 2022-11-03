require 'pry'
require 'yaml'

def prompt(msg)
  puts "--> #{msg}"
end

def welcome
  prompt "Welcome to twenty one"
  puts "============"
  prompt "The player with a total of 21 or the closest to it wins"
  puts "============"
end

CARDS = %w(2 3 4 5 6 7 8 9 10 jack queen king ace)
SUITS = %w(diamonds clubs spades hearts)

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
  sleep 0.5
  card
end

def show_initial_cards(plyrs_crds, deal_crds)
  prompt "Dealer has: #{joinof(deal_crds[0])} and an unknown card"
  prompt "You have: #{joinof(plyrs_crds[0])},  #{joinof(plyrs_crds[1])}:" \
         "for a total of #{calculate_cards(plyrs_crds)}"
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
  prompt "You now have: #{display_cards} for a total of:" \
         "#{calculate_cards(plyrs_crds)}"
end

def show_dealers_cards(deals_crds)
  display_cards = ''
  deals_crds.each do |arr|
    display_cards << "#{joinof(arr)}, "
  end
  prompt "Dealer now has: #{display_cards} for a total of:" \
         "#{calculate_cards(deals_crds)}"
end

def bust?(cards)
  calculate_cards(cards) > 21
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
    if value == "ace"
      total += 11
    elsif value.to_i == 0
      total += 10
    else
      total += value.to_i
    end
  end

  values.select { |value| value == "ace" }.count.times do
    total -= 10 if total > 21
  end

  total
end

def dealer_turn
  prompt "It's the dealers turn"
  sleep 1
end

def dealer_hit_or_stay(deal_cards, deck)
  loop do
    if calculate_cards(deal_cards) < 17
      deal_cards << deal_one_card(deck)
    end
    break if calculate_cards(deal_cards) >= 17
  end
  calculate_cards(deal_cards)
end

def declare_winner(plyr_crds, deal_crds)
  player_total = calculate_cards(plyr_crds)
  dealer_total = calculate_cards(deal_crds)

  if player_total == 21
    prompt "Your cards total 21! You win!"
  elsif dealer_total == 21
    prompt "Dealers cards total 21! Dealer wins!"
  elsif player_total > 21
    prompt "You busted! Dealer wins!"
  elsif dealer_total > 21
    prompt "Dealer busted! You win!"
  elsif player_total > dealer_total
    prompt "You win!"
  elsif dealer_total > player_total
    prompt "Dealer wins!"
  else
    prompt "It's a tie!"
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
welcome
loop do
  players_cards = []
  dealers_cards = []
  deck = initialize_deck
  deal_dealers_cards(dealers_cards, deck)
  deal_players_cards(players_cards, deck)
  show_initial_cards(players_cards, dealers_cards)

  loop do
    loop do
      prompt("Would you like to 'hit' or 'stay'")
      answer = gets.chomp.downcase
      break if %w(hit stay).include?(answer)
      prompt("That was an invalid choice")
    end
    system 'clear'
    if answer == 'hit'
      prompt "You chose to hit!"
      players_cards << deal_one_card(deck)
      prompt "Dealer has: #{joinof(dealers_cards[0])} and an unknown card"
      prompt "Your cards are now: #{joinof(players_cards)}:" \
             "for a total of #{calculate_cards(players_cards)}"
    else
      prompt "You chose to stay!"
      prompt "Your cards are now: #{joinof(players_cards)}:" \
             "for a total of #{calculate_cards(players_cards)}"
    end
    break if %w(stay).include?(answer) || bust?(players_cards)
  end

  if bust?(players_cards)
    busted(players_cards, dealers_cards)
    %w(y yes).include?(play_again?) ? next : break
  end

  system 'clear'
  dealer_turn
  dealer_hit_or_stay(dealers_cards, deck)
  show_dealers_cards(dealers_cards)
  show_players_cards(players_cards)
  calculate_cards(dealers_cards)
  declare_winner(players_cards, dealers_cards)
  break if %w(n no).include?(play_again?)
end

goodbye
