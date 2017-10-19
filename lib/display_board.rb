def divider
  "-----------\n"
end

def box
  "   |   |   \n"
end

def display_board(board)
  board.each_with_index do |val, ind|
    index = ind + 1
    is_third_value = (index % 3) == 0
    if (is_third_value)
      str += " #{val} \n\n#{divider}"
    else
      str += " #{val} |"
    end
  end
  puts str
end
board = ["X", " ", " ", " ", "X", " ", " ", " ", "X"]
display_board(board)
