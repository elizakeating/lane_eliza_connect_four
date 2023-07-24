class Game
  attr_reader :board,
              :player,
              :cpu
              
  def initialize
    @board = GameBoard.new
    @player = Player.new("X")
    @cpu = CPU.new("O")
  end
end