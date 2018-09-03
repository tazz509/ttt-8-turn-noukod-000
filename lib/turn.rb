def print_row(col1, col2, col3, board)
  puts " #{board[col1]} | #{board[col2]} | #{board[col3]} "
end

def separator
  puts "-----------"
end

def display_board board
  print_row(0, 1, 2, board)
  separator
  print_row(3, 4, 5, board)
  separator
  print_row(6, 7, 8, board)
end

def valid_move?(board, index)
 return index.between?(0, 8) && !position_taken?(board, index)
end

def position_taken?(board, index)
  if board[index] == ""
  false
  elsif board[index] == " "
    false
  elsif board[index] == 'X' || 'O'
     true
  else
     nil
  end
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, index, taken = 'X')
  board[index] = taken
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)

  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
