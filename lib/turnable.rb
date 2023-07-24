module Turnable
  def is_full?
    find_spaces.nil?
  end

  def find_spaces
    board.board.find {
      |column| column.include? "."
    }
  end

  def win?
    # \

  end

  def diagonal_win?
    if (board.board[6][6] == "X" || board.board[6][6] == "O" &&
        board.board[5][5] == "X" || board.board[5][5] == "O" &&
        board.board[4][4] == "X" || board.board[4][4] == "O" &&
        board.board[3][3] == "X" || board.board[3][3] == "O")

      true
    elsif (board.board[5][6] == "X" || board.board[5][6] == "O" &&
          board.board[4][5] == "X" || board.board[4][5] == "O" &&
          board.board[3][4] == "X" || board.board[3][4] == "O" &&
          board.board[2][3] == "X" || board.board[2][3] == "O")
      
      true
    elsif (board.board[4][6] == "X" || board.board[4][6] == "O" &&
          board.board[3][5] == "X" || board.board[3][5] == "O" &&
          board.board[2][4] == "X" || board.board[2][4] == "O" &&
          board.board[1][3] == "X" || board.board[1][3] == "O")

      true
    elsif (board.board[3][6] == "X" || board.board[3][6] == "O" &&
          board.board[2][5] == "X" || board.board[2][5] == "O" &&
          board.board[1][4] == "X" || board.board[1][4] == "O" &&
          board.board[0][3] == "X" || board.board[0][3] == "O")

      true
    elsif (board.board[6][5] == "X" || board.board[6][5] == "O" &&
          board.board[5][3] == "X" || board.board[5][3] == "O" &&
          board.board[4][4] == "X" || board.board[4][4] == "O" &&
          board.board[3][2] == "X" || board.board[3][2] == "O")

      true
    elsif (board.board[5][5] == "X" || board.board[5][5] == "O" &&
          board.board[4][3] == "X" || board.board[4][3] == "O" &&
          board.board[3][4] == "X" || board.board[3][4] == "O" &&
          board.board[2][2] == "X" || board.board[2][2] == "O")

      true
    elsif (board.board[4][5] == "X" || board.board[4][5] == "O" &&
          board.board[3][3] == "X" || board.board[3][3] == "O" &&
          board.board[2][4] == "X" || board.board[2][4] == "O" &&
          board.board[1][2] == "X" || board.board[1][2] == "O")

      true
    elsif (board.board[3][5] == "X" || board.board[3][5] == "O" &&
          board.board[2][4] == "X" || board.board[2][4] == "O" &&
          board.board[1][3] == "X" || board.board[1][3] == "O" &&
          board.board[0][2] == "X" || board.board[0][2] == "O")

      true
    elsif (board.board[6][4] == "X" || board.board[6][4] == "O" &&
          board.board[5][3] == "X" || board.board[5][3] == "O" &&
          board.board[4][2] == "X" || board.board[4][2] == "O" &&
          board.board[3][1] == "X" || board.board[3][1] == "O")

      true
    elsif (board.board[5][4] == "X" || board.board[5][4] == "O" &&
          board.board[4][3] == "X" || board.board[4][3] == "O" &&
          board.board[3][2] == "X" || board.board[3][2] == "O" &&
          board.board[2][1] == "X" || board.board[2][1] == "O")

      true
    elsif (board.board[4][4] == "X" || board.board[4][4] == "O" &&
          board.board[3][3] == "X" || board.board[3][3] == "O" &&
          board.board[2][2] == "X" || board.board[2][2] == "O" &&
          board.board[1][1] == "X" || board.board[1][1] == "O")

      true
    elsif (board.board[3][4] == "X" || board.board[3][4] == "O" &&
          board.board[2][3] == "X" || board.board[2][3] == "O" &&
          board.board[1][2] == "X" || board.board[1][2] == "O" &&
          board.board[0][1] == "X" || board.board[0][1] == "O")

      true
    else
      false
    end
  end
end