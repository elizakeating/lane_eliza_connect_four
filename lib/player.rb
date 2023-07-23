class Player
  attr_reader :token, :game_board

  def initialize(player_token)
    @token = player_token
    @game_board = GameBoard.new
  end
  
  def choose_column(column)
    #need new way to instantiate this outside of this method:
    # game_board = GameBoard.new
    # game_board.add_spaces
    @game_board.add_spaces
    if column == "A"
      # game_board.column_1.map{
      @game_board.column_1.map{
        |space| if space == "."
          # game_board.column_1.delete(space)
          @game_board.column_1.delete(space)
        end
      }
      # game_board.column_1.insert(1, @player_token)
      @game_board.column_1.insert(1, @token)
      # game_board.add_spaces
      @game_board.add_spaces
      @game_board
    elsif column == "B"
      @game_board.column_2.map{
        |space| if space == "."
          @game_board.column_2.delete(space)
        end
      }
      @game_board.column_2.insert(1, @token)
      @game_board.add_spaces
      @game_board
    elsif column == "C"
      @game_board.column_3.map{
        |space| if space == "."
          @game_board.column_3.delete(space)
        end
      }
      @game_board.column_3.insert(1, @token)
      @game_board.add_spaces
      @game_board
    elsif column == "D"
      @game_board.column_4.map{
        |space| if space == "."
          @game_board.column_4.delete(space)
        end
      }
      @game_board.column_4.insert(1, @token)
      @game_board.add_spaces
      @game_board
    elsif column == "E"
      @game_board.column_5.map{
        |space| if space == "."
          @game_board.column_5.delete(space)
        end
      }
      @game_board.column_5.insert(1, @token)
      @game_board.add_spaces
      @game_board
    elsif column == "F"
      @game_board.column_6.map{
        |space| if space == "."
          @game_board.column_6.delete(space)
        end
      }
      @game_board.column_6.insert(1, @token)
      @game_board.add_spaces
      @game_board
    elsif column == "G"
      @game_board.column_7.map{
        |space| if space == "."
          @game_board.column_7.delete(space)
        end
      }
      @game_board.column_7.insert(1, @token)
      @game_board.add_spaces
      @game_board
    end
  end
end