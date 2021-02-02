# Program: Twenty-One
# Date: 2/2/21
# Instructions: Create a game like the casino game 21. The best of three wins.

CARDS = %w(2 3 4 5 6 7 8 9 10 Jack Queen King Ace 
           2 3 4 5 6 7 8 9 10 Jack Queen King Ace 
           2 3 4 5 6 7 8 9 10 Jack Queen King Ace 
           2 3 4 5 6 7 8 9 10 Jack Queen King Ace).freeze 

# METHODS
def prompt(msg)
  puts "=> #{msg}"
end

def clear_screen
  system('clear')
  system('cls')
end 

def welcome_user
  clear_screen
  prompt "Welcome to 21!"
  prompt "Your goal is to try to get as close to 21 as possible without going over."
  prompt "If you go over 21, it's a 'bust' and you lose."
  prompt "The player who wins the best of three is the winner."
  sleep(7)
  clear_screen
  prompt "To start, the dealer will deal two cards to you and two to itself." 
  sleep(4)
  clear_screen
end 

def start_new_deck
  deck = CARDS.dup.shuffle
  deck
end 

def deal_first_two_cards(deck, player_hand, dealer_hand)
  player_hand << deck.shift(2)
  dealer_hand << deck.shift(2)
end 

def deal_one_card(deck, player_or_dealer_hand)
  player_or_dealer_hand << deck.shift(1)
end 

def convert_ace(total)
  total > 21 ? total - 10 : total
end 

def calculate_total(player_or_dealer_hand)
  hand = player_or_dealer_hand.flatten
  result = hand.map do |card| 
    if card == 'Jack' || card == 'Queen' || card == 'King'
      10 
    elsif card == 'Ace'
      11
    else 
      card.to_i 
    end 
  end 
  result.include?(11) ? convert_ace(result.inject(:+)) : result.inject(:+)
end 

def display_player_hand(player_hand, player_total)
  hand = player_hand.flatten
  card1 = hand[0]
  card2 = hand[-1]

  if (card1 == 'Ace' || card1 == '8') && (card2 == 'Ace' || card2 == '8')
    prompt "You were dealt an #{card1} and an #{card2}." 
  elsif (card1 == 'Ace' || card1 == '8') && (card2 != 'Ace' && card2 != '8')
    prompt "You were dealt an #{card1} and a #{card2}." 
  elsif (card1 != 'Ace' && card1 != '8') && (card2 == 'Ace' || card2 == '8')
    prompt "You were dealt a #{card1} and an #{card2}." 
  else 
    prompt "You were dealt a #{card1} and a #{card2}." 
  end 

  sleep(1)
  prompt "Your total is #{player_total}."
  puts
  sleep(2)
end 

def display_dealer_hand(dealer_hand)
  hand = dealer_hand.flatten
  card1 = hand[0]
  if card1 == 'Ace' || card1 == '8'
    prompt "The dealer was dealt an #{card1} and an additional card." 
  else 
    prompt "The dealer was dealt a #{card1} and an additional card." 
  end 
  sleep(1)
end 

def player_takes_turn(deck, player_hand, initial_player_total)
  player_total = initial_player_total
  loop do 
    sleep(1)
    prompt "Do you want to hit or stay?"
    puts
    hit_or_stay = gets.chomp.downcase 
    if hit_or_stay == 's' || hit_or_stay == 'stay'
      break 
    else 
      deal_one_card(deck, player_hand)
      new_hand = player_hand.flatten
      player_total = calculate_total(new_hand)
      puts 
      prompt "You were dealt a #{new_hand[-1]}. Your total is now #{player_total}."
      if player_total > 21 
        prompt "Oh no. You busted!"
        break 
      end 
    end 
  end 
  player_total
end 

def dealer_takes_turn(deck, dealer_hand, initial_dealer_total)
  dealer_total = initial_dealer_total
  loop do 
  	sleep(2)
  	puts
    if dealer_total > 21 
      prompt "The dealer busted!"
      break 
    elsif dealer_total >= 17 
      prompt "The dealer has chosen to stay."
      break 
    else 
      prompt "The dealer has drawn another card."
      deal_one_card(deck, dealer_hand)
      new_hand = dealer_hand.flatten
      dealer_total = calculate_total(new_hand)
    end 
  end 
  dealer_total
end 

def display_final_round_score(final_player_total, final_dealer_total)
  sleep(2)
  puts
  prompt "Your final hand totaled to #{final_player_total}."
  prompt "The dealer's final hand totaled to #{final_dealer_total}."
end 

def get_round_winner(final_player_total = 0, final_dealer_total = 0)
  if (final_player_total < final_dealer_total) && (final_dealer_total <= 21) 
    'dealer'
  elsif 
  	final_player_total == final_dealer_total
  	nil
  else
    'player'
  end 
end 

def display_round_winner(final_player_total, final_dealer_total)
	sleep(2)
	puts 
  if final_player_total == final_dealer_total
    prompt "It's a tie!"
  elsif (final_player_total < final_dealer_total) && (final_dealer_total <= 21) 
    prompt "Looks like the dealer won this time."
  else 
    prompt "Congratulations! It looks like you won."
  end 
end 

def play_again?
  sleep(2)
  answer = nil 
  loop do 
    puts 
    prompt "Would you like to play again ('y' for yes or 'n' for no)?"
    answer = gets.chomp
    break if answer.downcase.include?('y') || answer.downcase.include?('n')
    prompt "That's not a valid choice."
  end 
  answer.downcase 
end 

def determine_ultimate_winner(player_wins, dealer_wins)
	player_wins > dealer_wins ? "player" : "dealer"
end 

def display_result_of_multiple_rounds(player_wins, dealer_wins)
	prompt "You won #{player_wins} times. The dealer won #{dealer_wins} times."
	if determine_ultimate_winner(player_wins, dealer_wins) == 'player'
		prompt "You are the winner!"
	else 
		prompt "Better luck next time!"
	end 
end 

def display_final_msg(player_wins, dealer_wins)
	puts
	display_result_of_multiple_rounds(player_wins, dealer_wins)
	sleep(7)
	clear_screen
	prompt "Thanks for playing 21!"
	sleep(4)
	clear_screen
end 

# MAIN GAME PLAY 
welcome_user 
round_count = 1
player_wins = 0
dealer_wins = 0

loop do 
	prompt "Round #{round_count}"
	puts

  player_hand = []
  dealer_hand = []
  deck = start_new_deck
  deal_first_two_cards(deck, player_hand, dealer_hand)
  initial_player_total = calculate_total(player_hand)
  initial_dealer_total = calculate_total(dealer_hand)
  display_player_hand(player_hand, initial_player_total)
  display_dealer_hand(dealer_hand)
  final_player_total = player_takes_turn(deck, player_hand, initial_player_total)

  if final_player_total > 21 
    sleep(2)
    puts 
    prompt "Since you busted, the dealer has won this round." 
    winner = 'dealer'
  else 
    final_dealer_total = dealer_takes_turn(deck, dealer_hand, initial_dealer_total)
    display_final_round_score(final_player_total, final_dealer_total)
    winner = get_round_winner(final_player_total, final_dealer_total)
    display_round_winner(final_player_total, final_dealer_total)
  end 

  dealer_wins += 1 if winner == 'dealer'
  player_wins += 1 if winner == 'player'
  break if player_wins == 3 || dealer_wins == 3

  yes_or_no = play_again? 
  break if yes_or_no.include?('n')
  clear_screen

  round_count += 1 
end 

display_final_msg(player_wins, dealer_wins)
