def divider
  "-----------\n"
end

def box
  "   |   |   \n"
end

def display_board(board)
  str = ""
  board.each_with_index do |val, index|
    is_third_row = (index + 1) % 3 == 0
    is_ninth_value = (index + 1) == 9
    if (is_third_row & !is_ninth_value)
      str += " #{val} \n#{divider}"
    else
      str += " #{val} |"
    end
  end
  puts str
end
board = ["X", " ", " ", " ", "X", " ", " ", " ", "X"]
display_board(board)
