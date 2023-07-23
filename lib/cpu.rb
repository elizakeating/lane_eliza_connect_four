class CPU
  attr_reader :piece_type,
              :board

  def initialize(piece_type, board)
    @piece_type = piece_type
    @board = board
  end

  def random_column(column)
    if    column == "A"
      @board.column_1.each do |space|
        @board.column_1.delete(space) if space != "X" or space != "O"
      end
      @board.column_1.unshift(@piece_type)
      @board.column_1.unshift("A")
      @board.add_spaces
    elsif column == "B"
      @board.column_2.each do |space|
        @board.column_2.delete(space) if space != "X" or space != "O"
      end
      @board.column_2.unshift(@piece_type)
      @board.column_2.unshift("B")
      @board.add_spaces
    elsif column == "C"
      @board.column_3.each do |space|
        @board.column_3.delete(space) if space != "X" or space != "O"
      end
      @board.column_3.unshift(@piece_type)
      @board.column_3.unshift("C")
      @board.add_spaces
    elsif column == "D"
      @board.column_4.each do |space|
        @board.column_4.delete(space) if space != "X" or space != "O"
      end
      @board.column_4.unshift(@piece_type)
      @board.column_4.unshift("D")
      @board.add_spaces
    elsif column == "E"
      @board.column_5.each do |space|
        @board.column_5.delete(space) if space != "X" or space != "O"
      end
      @board.column_5.unshift(@piece_type)
      @board.column_5.unshift("E")
      @board.add_spaces
    elsif column == "F"
      @board.column_6.each do |space|
        @board.column_6.delete(space) if space != "X" or space != "O"
      end
      @board.column_6.unshift(@piece_type)
      @board.column_6.unshift("F")
      @board.add_spaces
    elsif column == "G"
      @board.column_7.each do |space|
        @board.column_7.delete(space) if space != "X" or space != "O"
      end
      @board.column_7.unshift(@piece_type)
      @board.column_7.unshift("G")
      @board.add_spaces
    end
  end
end