require 'pry'
WINNING_LINES = [[1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,8], [3,6,9], [1,5,9], [3,5,7]]
def initialize_board
  board = {}
  (1..9).each {|position| board[position] = ' '}
  board
end

def draw_board(board)
  system "clear"
  puts " #{board[1]} | #{board[2]} | #{board[3]}"
  puts "-----------------"
  puts " #{board[4]} | #{board[5]} | #{board[6]}"
  puts "-----------------"
  puts " #{board[7]} | #{board[8]} | #{board[9]}"
end

def empty_positions(board)
  board.select {|k,v| v == " "}.keys
end

def player_picks_position(board) 
  # begin
  # puts "Please pick a position: (1-9)"
  # position = gets.chomp.to_i
  # end until empty_positions(board).include?(position) 
  # board[position] = 'X'
  position = ''
  until empty_positions(board).include?(position) 
    puts "Please pick a position: (1-9)"
    position = gets.chomp.to_i
  end
  board[position] = 'X'
end 

def computer_picks_position(board)
  position = empty_positions(board).sample
  board[position] = 'O' 
end

def check_winner(board)
  WINNING_LINES.each do |line|
    return "Player" if board.values_at(*line).count('X') == 3
    return "Computer" if board.values_at(*line).count('O') == 3
  end
  nil
end

board = initialize_board
draw_board(board)
winner = check_winner(board)

begin
  player_picks_position(board)
  draw_board(board)
    break if check_winner(board)
  computer_picks_position(board)
  draw_board(board)
    break if check_winner(board)
  draw_board(board)
  winner = check_winner(board)
end until winner || empty_positions(board).empty? 

if winner
  puts "#{winner} won!"
else
  puts "It's a tie!"
end
