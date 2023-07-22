class GameBoard
  attr_reader :board,
              :space,
              :column_1,
              :column_2,
              :column_3,
              :column_4,
              :column_5,
              :column_6,
              :column_7

  def initialize
    @space = "."
    @column_1 = ["A"]
    @column_2 = ["B"]
    @column_3 = ["C"]
    @column_4 = ["D"]
    @column_5 = ["E"]
    @column_6 = ["F"]
    @column_7 = ["G"]
    @board = [@column_1, @column_2, @column_3, @column_4, @column_5, @column_6, @column_7]
  end
  
  def add_spaces
    @board.map do|column|
      if column.count < 7
        (7 - column.count).times do
          column.insert(1, @space)
        end
      end
    end
  end
end