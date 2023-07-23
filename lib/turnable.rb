module Turn
  def switch_to_player_token
    @token = player_token
  end

  def switch_to_cpu_token
    @token = cpu_token
  end

  def is_full?
    if find_spaces == "."
      false
    else
      true
    end
  end

  def find_spaces
    @game_board.find {
      |column| column.include? "."
    }
  end

  def win?
    @game_board.board.all? {
      |column|
      column[1..4] == "X"
      ||
      column[2..5] == "X"
      ||
      column[3..6] == "X"
      ||
      column[1..4] == "O"
      ||
      column[2..5] == "O"
      ||
      column[3..6] == "O"
    }
      end
    true if
      @game_board.board[0..3][1] == "X"
      ||
      @game_board.board[1..4][1] == "X"
      ||
      @game_board.board[2..5][1] == "X"
      ||
      @game_board.board[3..6][1] == "X"
      ||
      @game_board.board[0..3][1] == "O"
      ||
      @game_board.board[1..4][1] == "O"
      ||
      @game_board.board[2..5][1] == "O"
      ||
      @game_board.board[3..6][1] == "O"
      ||
      @game_board.board[0..3][2] == "X"
      ||
      @game_board.board[1..4][2] == "X"
      ||
      @game_board.board[2..5][2] == "X"
      ||
      @game_board.board[3..6][2] == "X"
      ||
      @game_board.board[0..3][2] == "O"
      ||
      @game_board.board[1..4][2] == "O"
      ||
      @game_board.board[2..5][2] == "O"
      ||
      @game_board.board[3..6][2] == "O"
      ||
      @game_board.board[0..3][3] == "X"
      ||
      @game_board.board[1..4][3] == "X"
      ||
      @game_board.board[2..5][3] == "X"
      ||
      @game_board.board[3..6][3] == "X"
      ||
      @game_board.board[0..3][3] == "O"
      ||
      @game_board.board[1..4][3] == "O"
      ||
      @game_board.board[2..5][3] == "O"
      ||
      @game_board.board[3..6][3] == "O"
      ||
      @game_board.board[0..3][4] == "X"
      ||
      @game_board.board[1..4][4] == "X"
      ||
      @game_board.board[2..5][4] == "X"
      ||
      @game_board.board[3..6][4] == "X"
      ||
      @game_board.board[0..3][4] == "O"
      ||
      @game_board.board[1..4][4] == "O"
      ||
      @game_board.board[2..5][4] == "O"
      ||
      @game_board.board[3..6][4] == "O"
      ||
      @game_board.board[0..3][5] == "X"
      ||
      @game_board.board[1..4][5] == "X"
      ||
      @game_board.board[2..5][5] == "X"
      ||
      @game_board.board[3..6][5] == "X"
      ||
      @game_board.board[0..3][5] == "O"
      ||
      @game_board.board[1..4][5] == "O"
      ||
      @game_board.board[2..5][5] == "O"
      ||
      @game_board.board[3..6][5] == "O"
      ||
      @game_board.board[0..3][6] == "X"
      ||
      @game_board.board[1..4][6] == "X"
      ||
      @game_board.board[2..5][6] == "X"
      ||
      @game_board.board[3..6][6] == "X"
      ||
      @game_board.board[0..3][6] == "O"
      ||
      @game_board.board[1..4][6] == "O"
      ||
      @game_board.board[2..5][6] == "O"
      ||
      @game_board.board[3..6][6] == "O"
    end
    # true if
    # diagonal checks:
  end
end