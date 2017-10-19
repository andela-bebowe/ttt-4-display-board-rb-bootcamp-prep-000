def divider
  "-----------\n"
end

def box
  "   |   |   \n"
end

def display_board(board)
  str = ""
  board.each_with_index do |val, index|
    is_third_value = (index + 1) % 3 == 0
    if (is_third_value)
      str += " #{val} \n#{divider}"
    else
      str += " #{val} |"
    end
  end
  puts str
end
board = ["X", " ", " ", " ", "X", " ", " ", " ", "X"]
display_board(board)
