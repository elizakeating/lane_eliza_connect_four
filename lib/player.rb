class Player
  attr_reader :token

  def initialize(player_token)
    @player_token = token
  end
  
  def choose_column(column)
    #need new way to instantiate this outside of this method:
    game_board = GameBoard.new
    game_board.add_spaces
    if column == "A"
      game_board.column_1.map{
        |space| if space == "."
          game_board.column_1.delete(space)
        end
      }
      game_board.column_1.insert(1, @player_token)
      game_board.add_spaces
      require 'pry';binding.pry
    end
  end
end