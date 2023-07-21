class GameBoard
  attr_reader :board, :space, :column

  def initialize
    @board = []
    @space = "."
    @column = []
  end
end