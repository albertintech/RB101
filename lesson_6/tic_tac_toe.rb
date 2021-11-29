INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

def prompt(msg)
  puts "=> #{msg}"
end

# Square number designations:
# 1 2 3
# 4 5 6
# 7 8 9

def display_board(brd)
  system 'clear'
  puts "You are #{PLAYER_MARKER}. Your opponent is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}  "
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}  "
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}  "
  puts "     |     |"
  puts ""
end

def initialize_board
  new_board = {}
  (1..9).each {|num| new_board[num] = INITIAL_MARKER}
  new_board
end

def empty_squares(brd)
  brd.keys.select {|num| brd[num] == INITIAL_MARKER}
end

def player_move(brd)
  square = ''
  loop do
  prompt "Choose a square (#{empty_squares(brd).join(', ')}):"
  square = gets.chomp.to_i
  break if empty_squares(brd).include?(square)
  prompt "Sorry, not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def computer_move(brd)
  square = empty_squares(brd).sample
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def winner?(brd)
  !!detect_winner(brd) # !! turns object into boolean
end

# Square number designations:
# 1 2 3
# 4 5 6
# 7 8 9

def detect_winner(brd)
  winning_lines = [
    [1,2,3], [4,5,6], [7,8,9], # wins by rows
    [1,4,7], [2,5,8], [3,6,9], # wins by columns
    [1,5,9], [3,5,7]           # wins crosswise
  ]
  winning_lines.each do |line| # each line is sub array of 3 values
    if brd[line[0]] == PLAYER_MARKER &&
      brd[line[1]] == PLAYER_MARKER &&
      brd[line[2]] == PLAYER_MARKER
      return 'Player'
    elsif brd[line[0]] == COMPUTER_MARKER &&
      brd[line[1]] == COMPUTER_MARKER &&
      brd[line[2]] == COMPUTER_MARKER
      return 'Computer'
    end
  end
  nil
end

loop do
board = initialize_board
display_board(board)

loop do
  player_move(board)
  display_board(board)
  break if winner?(board) || board_full?(board)

  computer_move(board)
  display_board(board)
  break if winner?(board) || board_full?(board)
end

if winner?(board)
  prompt "#{detect_winner(board)} won!"
else
  prompt "It's a tie!"
end

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing!"
