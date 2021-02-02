# Program: Tic Tac Toe Game
# Date: 01/12/21

require 'pry'

# CONSTANTS
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
MIDDLE_SQUARE = 5

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows 
								[[2, 5, 8], [1, 4, 7], [3, 6, 9]] + # columns
								[[1, 5, 9], [3, 5, 7]]              # diagonals

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
	prompt "Welcome to Tic Tac Toe!"
	prompt "The first player to win five rounds is the winner."
end 

def initialize_board
	new_board = {}
	(1..9).each { |num| new_board[num] = INITIAL_MARKER }
	new_board 
end

# rubocop: disable Metrics/MethodLength, Metrics/AbcSize
def display_board(board)
	puts "You're an #{PLAYER_MARKER}. Computer is a #{COMPUTER_MARKER}."
	puts ""
	puts "     |     |"
	puts "  #{board[1]}  |  #{board[2]}  |  #{board[3]}"
	puts "     |     |"
	puts "-----+-----+-----"
	puts "     |     |"
	puts "  #{board[4]}  |  #{board[5]}  |  #{board[6]}"
	puts "     |     |"
	puts "-----+-----+-----"
	puts "     |     |"
	puts "  #{board[7]}  |  #{board[8]}  |  #{board[9]}"	
	puts "     |     |"
end
# rubocop: enable Metrics/MethodLength, Metrics/AbcSize

def initialize_score 
	{ player: 0, computer: 0 }
end

def joinor(arr, punc =', ', conj = 'or ')
	count = 1
	stopper = (arr.size * 2 - 1)

	if arr.size == 1
		arr[0]
	elsif arr.size == 2
		arr.insert(1, " #{conj}")
	else 
		until count == stopper
			arr.insert(count, punc)
			count += 2
		end 
		arr.insert(-2, conj)
	end
	arr.join("")
end 

def empty_squares(board)
	board.keys.select { |num| board[num] == INITIAL_MARKER }
end 

def select_user_square(empty_squares)
	prompt "Choose a square #{joinor(empty_squares)}:"
	square_number = 0
	loop do 
		square_number = gets.chomp.to_i
		break if valid_user_choice?(square_number, empty_squares)
		prompt "That's not a valid choice. Try again."
	end 
	square_number
end 

def valid_user_choice?(choice, empty_squares)
	empty_squares.include?(choice)
end 

def select_computer_square(allowed_squares, board)
	defensive = detect_threatened_square(board, PLAYER_MARKER)
	offensive = detect_threatened_square(board, COMPUTER_MARKER)
	if offensive
		offensive
	elsif defensive
		defensive
	elsif allowed_squares.include?(MIDDLE_SQUARE)
		MIDDLE_SQUARE
	else 
		allowed_squares.sample
	end
end

def user_places_piece!(board, number)
	board[number] = PLAYER_MARKER
end 

def computer_places_piece!(board, number)
	prompt("The computer's move is...")
	sleep(1)
	board[number] = COMPUTER_MARKER
end 

def place_piece!(board, current_player)
	if current_player == 'player'
		user_places_piece!(board, select_user_square(empty_squares(board), board))
	else 
		computer_places_piece!(board, select_computer_square(empty_squares(board), board))
	end
end 

def detect_threatened_square(board, marker)
	WINNING_LINES.each do |line|
		marked, threatened = line.partition do |num|
			board[num] == marker
		end 
		if marked.size == 2 && board[threatened[0]] == INITIAL_MARKER
      return threatened[0]
		end 
	end 
	nil 
end

def user_won?(board)
	WINNING_LINES.any? do |line|
		line.all? do |num|
			board[num] == PLAYER_MARKER
		end
	end
end

def computer_won?(board)
	WINNING_LINES.any? do |line|
		line.all? do |num|
			board[num] == COMPUTER_MARKER
		end
	end
end 

def tie?(empty_squares)
	empty_squares.empty?
end

def play_again?
	prompt "Do you want to play again (yes/no)?"
	answer = ''
	loop do 
		answer = gets.chomp 
		break if %w(y yes n no).include?(answer.downcase)
		prompt "Invalid response."
	end 
	%w(y yes).include?(answer.downcase)
end

def round_over?(board, empty_squares)
	user_won?(board) || computer_won?(board) || tie?(empty_squares)
end

def display_wins_and_losses(scores)
	prompt "You have won #{scores[:player]} times."
	prompt "The computer has won #{scores[:computer]} times."
end 

def increment_user_score(scores)
	scores[:player] += 1
end 

def increment_computer_score(scores)
	scores[:computer] += 1
end 

def five_rounds_finished?(scores)
	scores[:player] == 5 || scores[:computer] == 5
end 

def choose_current_player
	prompt "Who do you want to go first? (Type m for 'me' or c for 'computer'.)"
	first_mover = ''
	loop do 
		first_mover = gets.chomp.downcase
		break if first_mover == 'm' || first_mover == 'c'
		prompt "That's an invalid choice." 
		prompt "Type m if you want to go first or c if you want the computer to go first."
	end 
	first_mover
end

def set_current_player(first_mover)
	if first_mover == 'm' 
		'player'
	elsif first_mover == 'c'
		'computer'
	else 
		choose_current_player
	end 
end 

def alternate_player(current_player)
	current_player == 'player' ? 'computer' : 'player'
end

def result_of_each_round(board, scores)
	if user_won?(board)
		prompt "You won this round!"
		increment_user_score(scores)
		sleep(1)
	elsif computer_won?(board)
		prompt "The computer won this round."
		increment_computer_score(scores)
		sleep(1)
	else 
		prompt "This round was a tie."
		sleep(1)
	end
end 

def display_full_game_winner(scores)
	if scores[:player] == 5
		prompt "You are the winner!"
	else
		prompt "It looks like the computer won this time."
	end 
end

# MAIN PROGRAM 
welcome_user 

loop do 
	scores = initialize_score

	loop do
		sleep(2)
		clear_screen
		board = initialize_board 
		first_mover = choose_current_player
		current_player = set_current_player(first_mover)

		loop do 
			display_board(board)
			place_piece!(board, current_player)
			current_player = alternate_player(current_player)
			display_board(board, scores)
			break if round_over?(board, empty_squares(board))
		end 

		result_of_each_round(board, scores)
		display_board(board, scores)
		break if five_rounds_finished?(scores)
		prompt "Let's go to the next round..."
	end 

	display_wins_and_losses(scores)
	display_full_game_winner(scores)
	break unless play_again? 
end

clear_screen
prompt "Thanks for playing Tic Tac Toe. Goodbye!"
