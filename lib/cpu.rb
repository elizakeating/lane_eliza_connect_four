require "./lib/turnable"
class CPU
  include Turnable
  attr_reader :piece_type,
              :board

  def initialize(piece_type, board)
    @piece_type = piece_type
    @board = board
  end

  def random_column(column)
    if    column == "A"
      board.column_1.map{
        |space| if space == "."
          board.column_1.delete(space)
        end
      }
      board.column_1.insert(1, @piece_type)
      board.add_spaces
    elsif column == "B"
      board.column_2.map{
        |space| if space == "."
          board.column_2.delete(space)
        end
      }
      board.column_2.insert(1, @piece_type)
      board.add_spaces
    elsif column == "C"
      board.column_3.map{
        |space| if space == "."
          board.column_3.delete(space)
        end
      }
      board.column_3.insert(1, @piece_type)
      board.add_spaces
    elsif column == "D"
      board.column_4.map{
        |space| if space == "."
          board.column_4.delete(space)
        end
      }
      board.column_4.insert(1, @piece_type)
      board.add_spaces
    elsif column == "E"
      board.column_5.map{
        |space| if space == "."
          board.column_5.delete(space)
        end
      }
      board.column_5.insert(1, @piece_type)
      board.add_spaces
    elsif column == "F"
      board.column_6.map{
        |space| if space == "."
          board.column_6.delete(space)
        end
      }
      board.column_6.insert(1, @piece_type)
      board.add_spaces
    elsif column == "G"
      board.column_7.map{
        |space| if space == "."
          board.column_7.delete(space)
        end
      }
      board.column_7.insert(1, @piece_type)
      board.add_spaces
    end
  end
end