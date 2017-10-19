def divider
  "-----------\n"
end

def box
  "   |   |   \n"
end

def display_board(board)
  board.each_with_index do |val, index|
    puts index
    if ((index + 1) % 3 == 0 )
      str += " #{val} \n\n#{divider}"
    else
      str += " #{val} |"
    end
  end
  puts str
end
board = ["X", " ", " ", " ", "X", " ", " ", " ", "X"]
display_board(board)
