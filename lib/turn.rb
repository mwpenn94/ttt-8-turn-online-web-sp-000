def display_board(board)
  puts  " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input) # code your input_to_index and move method here!
user_input.to_i - 1
end

def move(board, index, current_player)
 board[index] = current_player
end

def valid_move?(board, index) # code your #valid_move? method here
  if !position_taken?(board, index) && index.between?(0,8)
      return true
  else 
    return FALSE
end 
end


def position_taken?(board, index) # re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
  if board[index] == "X" || board[index] == "O" 
    return TRUE
  elsif board[index] == " " || "" || NIL
    return false
  else return FALSE
end
end

def current_player(board)
  turn_count(board) % 2 == 0? "X" : "O"
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index, current_player(board))
    turn(board)
  else turn(board)
end
display_board(board)
end

def turn_count(board)
  counter = 0
  board.each {|space|
    if space == "X" || space == "O"
      counter += 1   
    end
  }
  counter
end