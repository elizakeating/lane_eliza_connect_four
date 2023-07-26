module Turnable
  def is_full?
    find_spaces.nil?
  end

  def find_spaces
    game_board.board.find do
      |column| column.include? "."
    end
  end

  def win?
    horizontal_win? ||
    vertical_win? ||
    diagonal_win?
  end

  def vertical_win?
    win = false
    game_board.board.each do |column|
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
    column_array = [0, 1, 2, 3, 4, 5, 6]
    row_array = [1, 2, 3, 4, 5, 6]
    grid_hash = {}
    row_array.each do |num|
      grid_hash[num] = column_array
    end
    grid_hash

    pairs_array = []
    grid_hash.each do |key, value|
      value.each do |value|
        pairs_array << [[value], [key]]
      end
    end
    pairs_array

    counter = 0
    horizontal_win = false
    row_check = []

    6.times do
      4.times do
        while counter < 4
          row_check << game_board.board[pairs_array[counter][0][0]][pairs_array[counter][1][0]]
          counter += 1
        end
        pairs_array.shift
        if row_check == ["X", "X", "X", "X"] || row_check == ["O", "O", "O", "O"]
          horizontal_win = true
          break
        end
        row_check.clear
        counter = 0
      end
      pairs_array.shift(3)
    end
    horizontal_win
  end

  def diagonal_win?
    (game_board.board[0][6] == "X" &&
    game_board.board[1][5] == "X" &&
    game_board.board[2][4] == "X" &&
    game_board.board[3][3] == "X") ||
    (game_board.board[1][6] == "X" &&
    game_board.board[2][5] == "X" &&
    game_board.board[3][4] == "X" &&
    game_board.board[4][3] == "X") ||
    (game_board.board[2][6] == "X" &&
    game_board.board[3][5] == "X" &&
    game_board.board[4][4] == "X" &&
    game_board.board[5][3] == "X") ||
    (game_board.board[3][6] == "X" &&
    game_board.board[4][5] == "X" &&
    game_board.board[5][4] == "X" &&
    game_board.board[6][3] == "X") ||
    (game_board.board[0][5] == "X" &&
    game_board.board[1][4] == "X" &&
    game_board.board[2][3] == "X" &&
    game_board.board[3][2] == "X") ||
    (game_board.board[1][5] == "X" &&
    game_board.board[2][4] == "X" &&
    game_board.board[3][3] == "X" &&
    game_board.board[4][2] == "X") ||
    (game_board.board[2][5] == "X" &&
    game_board.board[3][4] == "X" &&
    game_board.board[4][3] == "X" &&
    game_board.board[5][2] == "X") ||
    (game_board.board[3][5] == "X" &&
    game_board.board[4][4] == "X" &&
    game_board.board[5][3] == "X" &&
    game_board.board[6][2] == "X") ||
    (game_board.board[0][4] == "X" &&
    game_board.board[1][3] == "X" &&
    game_board.board[2][2] == "X" &&
    game_board.board[3][1] == "X") ||
    (game_board.board[1][4] == "X" &&
    game_board.board[2][3] == "X" &&
    game_board.board[3][2] == "X" &&
    game_board.board[4][1] == "X") ||
    (game_board.board[2][4] == "X" &&
    game_board.board[3][3] == "X" &&
    game_board.board[4][2] == "X" &&
    game_board.board[5][1] == "X") ||
    (game_board.board[3][4] == "X" &&
    game_board.board[4][3] == "X" &&
    game_board.board[5][2] == "X" &&
    game_board.board[6][1] == "X") ||
    (game_board.board[0][6] == "O" &&
    game_board.board[1][5] == "O" &&
    game_board.board[2][4] == "O" &&
    game_board.board[3][3] == "O") ||
    (game_board.board[1][6] == "O" &&
    game_board.board[2][5] == "O" &&
    game_board.board[3][4] == "O" &&
    game_board.board[4][3] == "O") ||
    (game_board.board[2][6] == "O" &&
    game_board.board[3][5] == "O" &&
    game_board.board[4][4] == "O" &&
    game_board.board[5][3] == "O") ||
    (game_board.board[3][6] == "O" &&
    game_board.board[4][5] == "O" &&
    game_board.board[5][4] == "O" &&
    game_board.board[6][3] == "O") ||
    (game_board.board[0][5] == "O" &&
    game_board.board[1][4] == "O" &&
    game_board.board[2][3] == "O" &&
    game_board.board[3][2] == "O") ||
    (game_board.board[1][5] == "O" &&
    game_board.board[2][4] == "O" &&
    game_board.board[3][3] == "O" &&
    game_board.board[4][2] == "O") ||
    (game_board.board[2][5] == "O" &&
    game_board.board[3][4] == "O" &&
    game_board.board[4][3] == "O" &&
    game_board.board[5][2] == "O") ||
    (game_board.board[3][5] == "O" &&
    game_board.board[4][4] == "O" &&
    game_board.board[5][3] == "O" &&
    game_board.board[6][2] == "O") ||
    (game_board.board[0][4] == "O" &&
    game_board.board[1][3] == "O" &&
    game_board.board[2][2] == "O" &&
    game_board.board[3][1] == "O") ||
    (game_board.board[1][4] == "O" &&
    game_board.board[2][3] == "O" &&
    game_board.board[3][2] == "O" &&
    game_board.board[4][1] == "O") ||
    (game_board.board[2][4] == "O" &&
    game_board.board[3][3] == "O" &&
    game_board.board[4][2] == "O" &&
    game_board.board[5][1] == "O") ||
    (game_board.board[3][4] == "O" &&
    game_board.board[4][3] == "O" &&
    game_board.board[5][2] == "O" &&
    game_board.board[6][1] == "O") ||
    (game_board.board[6][6] == "X" &&
    game_board.board[5][5] == "X" &&
    game_board.board[4][4] == "X" &&
    game_board.board[3][3] == "X") ||
    (game_board.board[5][6] == "X" &&
    game_board.board[4][5] == "X" &&
    game_board.board[3][4] == "X" &&
    game_board.board[2][3] == "X") ||
    (game_board.board[4][6] == "X" &&
    game_board.board[3][5] == "X" &&
    game_board.board[2][4] == "X" &&
    game_board.board[1][3] == "X") ||
    (game_board.board[3][6] == "X" &&
    game_board.board[2][5] == "X" &&
    game_board.board[1][4] == "X" &&
    game_board.board[0][3] == "X") ||
    (game_board.board[6][5] == "X" &&
    game_board.board[5][3] == "X" &&
    game_board.board[4][4] == "X" &&
    game_board.board[3][2] == "X") ||
    (game_board.board[5][5] == "X" &&
    game_board.board[4][3] == "X" &&
    game_board.board[3][4] == "X" &&
    game_board.board[2][2] == "X") ||
    (game_board.board[4][5] == "X" &&
    game_board.board[3][3] == "X" &&
    game_board.board[2][4] == "X" &&
    game_board.board[1][2] == "X") ||
    (game_board.board[3][5] == "X" &&
    game_board.board[2][4] == "X" &&
    game_board.board[1][3] == "X" &&
    game_board.board[0][2] == "X") ||
    (game_board.board[6][4] == "X" &&
    game_board.board[5][3] == "X" &&
    game_board.board[4][2] == "X" &&
    game_board.board[3][1] == "X") ||
    (game_board.board[5][4] == "X" &&
    game_board.board[4][3] == "X" &&
    game_board.board[3][2] == "X" &&
    game_board.board[2][1] == "X") ||
    (game_board.board[4][4] == "X" &&
    game_board.board[3][3] == "X" &&
    game_board.board[2][2] == "X" &&
    game_board.board[1][1] == "X") ||
    (game_board.board[3][4] == "X" &&
    game_board.board[2][3] == "X" &&
    game_board.board[1][2] == "X" &&
    game_board.board[0][1] == "X") ||
    (game_board.board[6][6] == "O" &&
    game_board.board[5][5] == "O" &&
    game_board.board[4][4] == "O" &&
    game_board.board[3][3] == "O") ||
    (game_board.board[5][6] == "O" &&
    game_board.board[4][5] == "O" &&
    game_board.board[3][4] == "O" &&
    game_board.board[2][3] == "O") ||
    (game_board.board[4][6] == "O" &&
    game_board.board[3][5] == "O" &&
    game_board.board[2][4] == "O" &&
    game_board.board[1][3] == "O") ||
    (game_board.board[3][6] == "O" &&
    game_board.board[2][5] == "O" &&
    game_board.board[1][4] == "O" &&
    game_board.board[0][3] == "O") ||
    (game_board.board[6][5] == "O" &&
    game_board.board[5][3] == "O" &&
    game_board.board[4][4] == "O" &&
    game_board.board[3][2] == "O") ||
    (game_board.board[5][5] == "O" &&
    game_board.board[4][3] == "O" &&
    game_board.board[3][4] == "O" &&
    game_board.board[2][2] == "O") ||
    (game_board.board[4][5] == "O" &&
    game_board.board[3][3] == "O" &&
    game_board.board[2][4] == "O" &&
    game_board.board[1][2] == "O") ||
    (game_board.board[3][5] == "O" &&
    game_board.board[2][4] == "O" &&
    game_board.board[1][3] == "O" &&
    game_board.board[0][2] == "O") ||
    (game_board.board[6][4] == "O" &&
    game_board.board[5][3] == "O" &&
    game_board.board[4][2] == "O" &&
    game_board.board[3][1] == "O") ||
    (game_board.board[5][4] == "O" &&
    game_board.board[4][3] == "O" &&
    game_board.board[3][2] == "O" &&
    game_board.board[2][1] == "O") ||
    (game_board.board[4][4] == "O" &&
    game_board.board[3][3] == "O" &&
    game_board.board[2][2] == "O" &&
    game_board.board[1][1] == "O") ||
    (game_board.board[3][4] == "O" &&
    game_board.board[2][3] == "O" &&
    game_board.board[1][2] == "O" &&
    game_board.board[0][1] == "O")
  end
end