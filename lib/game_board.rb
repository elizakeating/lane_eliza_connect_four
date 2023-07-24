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
    @board.each do |column|
      until column.count == 7
        column.insert(1, @space)
      end
    end
  end

  def print_board
    counter = 0
    7.times do
      @board.each do |column|
        print column[counter] + " "
      end
      counter += 1
      puts ""
    end
    @board
  end
end