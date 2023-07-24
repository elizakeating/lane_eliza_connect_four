require "./lib/turnable"
class CPU
  include Turnable
  attr_reader :game_board

  attr_accessor :piece_type

  def initialize(piece_type, game_board)
    @piece_type = piece_type
    @game_board = game_board
  end

  def random_column(column)
    if    column == "A"
      game_board.column_1.map{
        |space| if space == "."
          game_board.column_1.delete(space)
        end
      }
      game_board.column_1.insert(1, @piece_type)
      game_board.add_spaces
    elsif column == "B"
      game_board.column_2.map{
        |space| if space == "."
          game_board.column_2.delete(space)
        end
      }
      game_board.column_2.insert(1, @piece_type)
      game_board.add_spaces
    elsif column == "C"
      game_board.column_3.map{
        |space| if space == "."
          game_board.column_3.delete(space)
        end
      }
      game_board.column_3.insert(1, @piece_type)
      game_board.add_spaces
    elsif column == "D"
      game_board.column_4.map{
        |space| if space == "."
          game_board.column_4.delete(space)
        end
      }
      game_board.column_4.insert(1, @piece_type)
      game_board.add_spaces
    elsif column == "E"
      game_board.column_5.map{
        |space| if space == "."
          game_board.column_5.delete(space)
        end
      }
      game_board.column_5.insert(1, @piece_type)
      game_board.add_spaces
    elsif column == "F"
      game_board.column_6.map{
        |space| if space == "."
          game_board.column_6.delete(space)
        end
      }
      game_board.column_6.insert(1, @piece_type)
      game_board.add_spaces
    elsif column == "G"
      game_board.column_7.map{
        |space| if space == "."
          game_board.column_7.delete(space)
        end
      }
      game_board.column_7.insert(1, @piece_type)
      game_board.add_spaces
    end
  end
end