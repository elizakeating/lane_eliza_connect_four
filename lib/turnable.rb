module Turnable
  def is_full?
    find_spaces.nil?
  end

  def find_spaces
    board.board.find do
      |column| column.include? "."
    end
  end

  def vertical_win?
    win = false
    board.board.each do |column|
      win = true if column[1..4] == ["X", "X", "X", "X"] ||
      column[2..5] == ["X", "X", "X", "X"] ||
      column[3..6] == ["X", "X", "X", "X"] ||
      column[1..4] == ["O", "O", "O", "O"] ||
      column[2..5] == ["O", "O", "O", "O"] ||
      column[3..6] == ["O", "O", "O", "O"]
    end
    win
  end

  def horizontal_win?
  require 'pry';binding.pry
    (board.board[0][1] == "X" &&
    board.board[1][1] == "X" &&
    board.board[2][1] == "X" &&
    board.board[3][1] == "X") ||
    board.board[1..4][1] == ["X", "X", "X", "X"] ||
    board.board[2..5][1] == ["X", "X", "X", "X"] ||
    board.board[3..6][1] == ["X", "X", "X", "X"] ||
    board.board[0..3][1] == ["O", "O", "O", "O"] ||
    board.board[1..4][1] == ["O", "O", "O", "O"] ||
    board.board[2..5][1] == ["O", "O", "O", "O"] ||
    board.board[3..6][1] == ["O", "O", "O", "O"] ||
    board.board[0..3][2] == ["X", "X", "X", "X"] ||
    board.board[1..4][2] == ["X", "X", "X", "X"] ||
    board.board[2..5][2] == ["X", "X", "X", "X"] ||
    board.board[3..6][2] == ["X", "X", "X", "X"] ||
    board.board[0..3][2] == ["O", "O", "O", "O"] ||
    board.board[1..4][2] == ["O", "O", "O", "O"] ||
    board.board[2..5][2] == ["O", "O", "O", "O"] ||
    board.board[3..6][2] == ["O", "O", "O", "O"] ||
    board.board[0..3][3] == ["X", "X", "X", "X"] ||
    board.board[1..4][3] == ["X", "X", "X", "X"] ||
    board.board[2..5][3] == ["X", "X", "X", "X"] ||
    board.board[3..6][3] == ["X", "X", "X", "X"] ||
    board.board[0..3][3] == ["O", "O", "O", "O"] ||
    board.board[1..4][3] == ["O", "O", "O", "O"] ||
    board.board[2..5][3] == ["O", "O", "O", "O"] ||
    board.board[3..6][3] == ["O", "O", "O", "O"] ||
    board.board[0..3][4] == ["X", "X", "X", "X"] ||
    board.board[1..4][4] == ["X", "X", "X", "X"] ||
    board.board[2..5][4] == ["X", "X", "X", "X"] ||
    board.board[3..6][4] == ["X", "X", "X", "X"] ||
    board.board[0..3][4] == ["O", "O", "O", "O"] ||
    board.board[1..4][4] == ["O", "O", "O", "O"] ||
    board.board[2..5][4] == ["O", "O", "O", "O"] ||
    board.board[3..6][4] == ["O", "O", "O", "O"] ||
    board.board[0..3][5] == ["X", "X", "X", "X"] ||
    board.board[1..4][5] == ["X", "X", "X", "X"] ||
    board.board[2..5][5] == ["X", "X", "X", "X"] ||
    board.board[3..6][5] == ["X", "X", "X", "X"] ||
    board.board[0..3][5] == ["O", "O", "O", "O"] ||
    board.board[1..4][5] == ["O", "O", "O", "O"] ||
    board.board[2..5][5] == ["O", "O", "O", "O"] ||
    board.board[3..6][5] == ["O", "O", "O", "O"] ||
    board.board[0..3][6] == ["X", "X", "X", "X"] ||
    board.board[1..4][6] == ["X", "X", "X", "X"] ||
    board.board[2..5][6] == ["X", "X", "X", "X"] ||
    board.board[3..6][6] == ["X", "X", "X", "X"] ||
    board.board[0..3][6] == ["O", "O", "O", "O"] ||
    board.board[1..4][6] == ["O", "O", "O", "O"] ||
    board.board[2..5][6] == ["O", "O", "O", "O"] ||
    board.board[3..6][6] == ["O", "O", "O", "O"]
    win
  end

  def diagonal_win?
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
    (board.board[6][6] == "X" &&
    board.board[5][5] == "X" &&
    board.board[4][4] == "X" &&
    board.board[3][3] == "X") ||
    (board.board[5][6] == "X" &&
    board.board[4][5] == "X" &&
    board.board[3][4] == "X" &&
    board.board[2][3] == "X") ||
    (board.board[4][6] == "X" &&
    board.board[3][5] == "X" &&
    board.board[2][4] == "X" &&
    board.board[1][3] == "X") ||
    (board.board[3][6] == "X" &&
    board.board[2][5] == "X" &&
    board.board[1][4] == "X" &&
    board.board[0][3] == "X") ||
    (board.board[6][5] == "X" &&
    board.board[5][3] == "X" &&
    board.board[4][4] == "X" &&
    board.board[3][2] == "X") ||
    (board.board[5][5] == "X" &&
    board.board[4][3] == "X" &&
    board.board[3][4] == "X" &&
    board.board[2][2] == "X") ||
    (board.board[4][5] == "X" &&
    board.board[3][3] == "X" &&
    board.board[2][4] == "X" &&
    board.board[1][2] == "X") ||
    (board.board[3][5] == "X" &&
    board.board[2][4] == "X" &&
    board.board[1][3] == "X" &&
    board.board[0][2] == "X") ||
    (board.board[6][4] == "X" &&
    board.board[5][3] == "X" &&
    board.board[4][2] == "X" &&
    board.board[3][1] == "X") ||
    (board.board[5][4] == "X" &&
    board.board[4][3] == "X" &&
    board.board[3][2] == "X" &&
    board.board[2][1] == "X") ||
    (board.board[4][4] == "X" &&
    board.board[3][3] == "X" &&
    board.board[2][2] == "X" &&
    board.board[1][1] == "X") ||
    (board.board[3][4] == "X" &&
    board.board[2][3] == "X" &&
    board.board[1][2] == "X" &&
    board.board[0][1] == "X") ||
    (board.board[6][6] == "O" &&
    board.board[5][5] == "O" &&
    board.board[4][4] == "O" &&
    board.board[3][3] == "O") ||
    (board.board[5][6] == "O" &&
    board.board[4][5] == "O" &&
    board.board[3][4] == "O" &&
    board.board[2][3] == "O") ||
    (board.board[4][6] == "O" &&
    board.board[3][5] == "O" &&
    board.board[2][4] == "O" &&
    board.board[1][3] == "O") ||
    (board.board[3][6] == "O" &&
    board.board[2][5] == "O" &&
    board.board[1][4] == "O" &&
    board.board[0][3] == "O") ||
    (board.board[6][5] == "O" &&
    board.board[5][3] == "O" &&
    board.board[4][4] == "O" &&
    board.board[3][2] == "O") ||
    (board.board[5][5] == "O" &&
    board.board[4][3] == "O" &&
    board.board[3][4] == "O" &&
    board.board[2][2] == "O") ||
    (board.board[4][5] == "O" &&
    board.board[3][3] == "O" &&
    board.board[2][4] == "O" &&
    board.board[1][2] == "O") ||
    (board.board[3][5] == "O" &&
    board.board[2][4] == "O" &&
    board.board[1][3] == "O" &&
    board.board[0][2] == "O") ||
    (board.board[6][4] == "O" &&
    board.board[5][3] == "O" &&
    board.board[4][2] == "O" &&
    board.board[3][1] == "O") ||
    (board.board[5][4] == "O" &&
    board.board[4][3] == "O" &&
    board.board[3][2] == "O" &&
    board.board[2][1] == "O") ||
    (board.board[4][4] == "O" &&
    board.board[3][3] == "O" &&
    board.board[2][2] == "O" &&
    board.board[1][1] == "O") ||
    (board.board[3][4] == "O" &&
    board.board[2][3] == "O" &&
    board.board[1][2] == "O" &&
    board.board[0][1] == "O")
  end
end