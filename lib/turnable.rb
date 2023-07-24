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
    (board.board[0][6] == "X" &&
    board.board[1][5] == "X" &&
    board.board[2][4] == "X" &&
    board.board[3][3] == "X") ||
    (board.board[1][6] == "X" &&
    board.board[2][5] == "X" &&
    board.board[3][4] == "X" &&
    board.board[4][3] == "X") ||
    (board.board[2][6] == "X" &&
    board.board[3][5] == "X" &&
    board.board[4][4] == "X" &&
    board.board[5][3] == "X") ||
    (board.board[3][6] == "X" &&
    board.board[4][5] == "X" &&
    board.board[5][4] == "X" &&
    board.board[6][3] == "X") ||
    (board.board[0][5] == "X" &&
    board.board[1][4] == "X" &&
    board.board[2][3] == "X" &&
    board.board[3][2] == "X") ||
    (board.board[1][5] == "X" &&
    board.board[2][4] == "X" &&
    board.board[3][3] == "X" &&
    board.board[4][2] == "X") ||
    (board.board[2][5] == "X" &&
    board.board[3][4] == "X" &&
    board.board[4][3] == "X" &&
    board.board[5][2] == "X") ||
    (board.board[3][5] == "X" &&
    board.board[4][4] == "X" &&
    board.board[5][3] == "X" &&
    board.board[6][2] == "X") ||
    (board.board[0][4] == "X" &&
    board.board[1][3] == "X" &&
    board.board[2][2] == "X" &&
    board.board[3][1] == "X") ||
    (board.board[1][4] == "X" &&
    board.board[2][3] == "X" &&
    board.board[3][2] == "X" &&
    board.board[4][1] == "X") ||
    (board.board[2][4] == "X" &&
    board.board[3][3] == "X" &&
    board.board[4][2] == "X" &&
    board.board[5][1] == "X") ||
    (board.board[3][4] == "X" &&
    board.board[4][3] == "X" &&
    board.board[5][2] == "X" &&
    board.board[6][1] == "X") ||
    (board.board[0][6] == "O" &&
    board.board[1][5] == "O" &&
    board.board[2][4] == "O" &&
    board.board[3][3] == "O") ||
    (board.board[1][6] == "O" &&
    board.board[2][5] == "O" &&
    board.board[3][4] == "O" &&
    board.board[4][3] == "O") ||
    (board.board[2][6] == "O" &&
    board.board[3][5] == "O" &&
    board.board[4][4] == "O" &&
    board.board[5][3] == "O") ||
    (board.board[3][6] == "O" &&
    board.board[4][5] == "O" &&
    board.board[5][4] == "O" &&
    board.board[6][3] == "O") ||
    (board.board[0][5] == "O" &&
    board.board[1][4] == "O" &&
    board.board[2][3] == "O" &&
    board.board[3][2] == "O") ||
    (board.board[1][5] == "O" &&
    board.board[2][4] == "O" &&
    board.board[3][3] == "O" &&
    board.board[4][2] == "O") ||
    (board.board[2][5] == "O" &&
    board.board[3][4] == "O" &&
    board.board[4][3] == "O" &&
    board.board[5][2] == "O") ||
    (board.board[3][5] == "O" &&
    board.board[4][4] == "O" &&
    board.board[5][3] == "O" &&
    board.board[6][2] == "O") ||
    (board.board[0][4] == "O" &&
    board.board[1][3] == "O" &&
    board.board[2][2] == "O" &&
    board.board[3][1] == "O") ||
    (board.board[1][4] == "O" &&
    board.board[2][3] == "O" &&
    board.board[3][2] == "O" &&
    board.board[4][1] == "O") ||
    (board.board[2][4] == "O" &&
    board.board[3][3] == "O" &&
    board.board[4][2] == "O" &&
    board.board[5][1] == "O") ||
    (board.board[3][4] == "O" &&
    board.board[4][3] == "O" &&
    board.board[5][2] == "O" &&
    board.board[6][1] == "O") ||
  end
end